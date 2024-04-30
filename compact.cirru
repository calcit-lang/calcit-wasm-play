
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-codearea $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-codearea () $ [] (effect-codearea)
              textarea $ {}
                :class-name $ str-spaced css/font-code css/flex style-code
                :spellcheck false
                :inner-text "\"code here..."
                :id "\"code"
                :on-keydown $ fn (e d!)
                  when
                    and
                      = 13 $ :keycode e
                      :meta? e
                      :shift? e
                    run-calcit!
                    .!preventDefault $ :event e
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ or (:cursor states) ([])
                  state $ or (:data states)
                    {} $ :content "\""
                div
                  {} $ :class-name (str-spaced css/preset css/fullscreen css/global css/column)
                  div
                    {} $ :class-name (str-spaced css/row-middle style-header)
                    a $ {} (:href "\"http://calcit-lang.org") (:class-name style-logo) (:inner-text "\"Calcit Playground")
                    =< 16 nil
                    a $ {} (:href "\"https://github.com/calcit-lang/calcit/discussions/79#discussioncomment-1653493") (:target "\"_blank") (:inner-text "\"Examples")
                    =< 16 nil
                    button $ {} (:class-name css/button) (:inner-text "\"Run")
                      :on-click $ fn (e d!) (run-calcit!)
                    =< 8 nil
                    <> "\"Read logs in Console" style-hint
                  div
                    {} $ :class-name (str-spaced css/expand css/row style-body)
                    comp-codearea
                    div
                      {}
                        :class-name $ str-spaced css/flex css/font-code style-result
                        :id "\"result"
                      <> "\";; logs in Console, open Console to read"
                  when dev? $ comp-reel (>> states :reel) reel ({})
        |effect-codearea $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-codearea () (action el at?)
              when (= action :mount)
                -> el .-value $ set! initial-code-sample
                codearea el
        |initial-code-sample $ %{} :CodeEntry (:doc |)
          :code $ quote (def initial-code-sample "\"\nprintln (range 100)\n\nprintln $ str \"|hello world\"\n\nlet\n    fact $ fn (acc x)\n      if (>= x 1)\n        recur (* x acc) (dec x)\n        , acc\n  println $ fact 1 10\n")
        |run-calcit! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-calcit! () $ let
                code-el $ js/document.querySelector "\"#code"
                result-el $ js/document.querySelector "\"#result"
                code $ .-value code-el
                _v $ -> result-el .-innerText (set! "\"")
                start $ js/performance.now
                result $ run-code code
                cost $ - (js/performance.now) start
              -> result-el .-innerText $ set!
                str (.-innerText result-el) &newline &newline result &newline &newline cost "\"ms"
        |style-body $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-body $ {}
              "\"&" $ {} (:overscroll-behavior-y :none) (:overscroll-behavior-x :none)
        |style-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-code $ {}
              "\"&" $ {} (:height "\"100%") (:padding "\"8px")
        |style-header $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-header $ {}
              "\"&" $ {} (:padding "\"0 8px")
        |style-hint $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-hint $ {}
              "\"&" $ {} (:font-style :italic) (:color "\"#aaa")
        |style-logo $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-logo $ {}
        |style-result $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-result $ {}
              "\"&" $ {} (:background-color "\"#eee") (:padding "\"24px 8px 200px 8px") (:line-height "\"1.4")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            "\"../pkg/calcit_wasm_play" :refer $ run-code
            "\"@mvc-works/codearea" :refer $ codearea
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key "\"workflow")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= op :states
                js/console.log "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if (= "\"hidden" js/document.visibilityState) (persist-storage!)
              flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              -> (init)
                .!then $ fn (w) (js/console.log "\"loaded wasm" w)
              register-log!
              println "|App started."
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "\"Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
        |register-log! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn register-log! ()
              js-set js/window "\"_calcit_log" $ fn (content)
                let
                    result-el $ js/document.querySelector "\"#result"
                  -> result-el .-innerText $ set!
                    str (.-innerText result-el) &newline content
              js-set js/window "\"_calcit_error" $ fn (content)
                let
                    result-el $ js/document.querySelector "\"#result"
                  -> result-el .-innerText $ set!
                    str (.-innerText result-el) &newline content
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
            "\"../pkg/calcit_wasm_play" :default init
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:hydrate-storage data) data
                _ $ do (eprintln "\"unknown op:" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
