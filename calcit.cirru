
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    |app.comp.container $ %{} 'FileEntry
      :defs $ {}
        |comp-codearea $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-codearea (s)
              [] (effect-codearea s)
                textarea $ {}
                  :class-name $ str-spaced css/font-code css/flex style-code
                  :spellcheck false
                  :inner-text "|code here..."
                  :id |code
                  :on-keydown $ fn (e d!)
                    let
                        keycode $ option:unwrap-or (get e :keycode) 0
                        meta? $ option:unwrap-or (get e :meta?) false
                        event $ option:unwrap-or (get e :event) (js-object)
                      when
                        and (= 13 keycode) meta?
                        run-calcit!
                        .!preventDefault event
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        |comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ option:unwrap-or (get reel :store) {}
                  states $ option:unwrap-or (get reel :states) {}
                  cursor $ option:unwrap-or (get states :cursor) []
                  state $ or
                    option:unwrap-or (get states :data) nil
                    {} (:content |) (:snippet :range)
                div
                  {} $ :class-name (str-spaced css/preset css/fullscreen css/global css/column)
                  comp-nav
                  div
                    {} $ :class-name (str-spaced css/expand css/row style-body)
                    comp-tabs
                      {}
                        :selected $ option:unwrap-or (get state :snippet) :range
                        :vertical? true
                      , snippet-tabs $ fn (info d!)
                        d! cursor $ assoc state :snippet
                          option:unwrap-or (nth info 1) :range
                    comp-codearea $ option:unwrap-or (get state :snippet) :range
                    pre
                      {}
                        :class-name $ str-spaced css/expand css/font-code style-result
                        :id |result
                      <> "|;; logs in Console, open Console to read"
                when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
          :schema $ :: 'Dynamic
        |comp-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-nav () $ div
              {} $ :class-name (str-spaced css/row-parted style-header)
              div
                {} $ :class-name (str-spaced css/row-middle)
                <> "|Playground of"
                =< 4 nil
                a $ {} (:href |http://calcit-lang.org) (:class-name style-logo) (:target |_blank) (:inner-text |Calcit)
                =< 16 nil
                a $ {} (:href |https://github.com/calcit-lang/calcit/discussions/79#discussioncomment-1653493) (:target |_blank) (:inner-text |Examples)
                =< 16 nil
                button $ {} (:class-name css/button) (:inner-text |Run)
                  :on-click $ fn (e d!) (run-calcit!)
              div ({})
                a $ {} (:href |https://github.com/calcit-lang/calcit-wasm-play) (:target |_blank) (:inner-text "|Git Repo")
          :examples $ []
          :schema $ :: 'Dynamic
        |effect-codearea $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defeffect effect-codearea (ss) (action el at?)
              when (= action :mount)
                -> el .-value $ set! initial-code-sample
                js/setTimeout $ fn () (codearea el)
              when (= action :update)
                -> el .-value $ set!
                  option:unwrap-or (get snippets ss) initial-code-sample
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic
              :features $ #{} :js-ffi
        |initial-code-sample $ %{} 'CodeEntry (:doc |)
          :code $ quote (def initial-code-sample "|\nprintln (range 100)\n\nprintln $ str \"|hello world\"\n\nlet\n    fact $ fn (acc x)\n      if (>= x 1)\n        recur (* x acc) (dec x)\n        , acc\n  println $ fact 1 10\n")
          :examples $ []
          :schema $ :: 'Dynamic
        |run-calcit! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-calcit! () $ let
                code-el $ unsafe-coerce (js/document.querySelector |#code) JsObject
                result-el $ unsafe-coerce (js/document.querySelector |#result) JsObject
                code $ unsafe-coerce (.-value code-el) String
                _v $ set! (.-innerText result-el) |
                start $ unsafe-coerce (js/performance.now) Number
                result $ run-code code
                cost $ -
                  unsafe-coerce (js/performance.now) Number
                  , start
                inner-text $ unsafe-coerce (.-innerText result-el) String
              set! (.-innerText result-el) (str inner-text &newline &newline result &newline &newline cost |ms)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |snippet-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def snippet-tabs $ [] (:: :tab :range |Range) (:: :tab :literals |Literals) (:: :tab :list-ops "|List Ops") (:: :tab :structures |Structures) (:: :tab :threads |Threads)
          :examples $ []
          :schema $ :: 'Dynamic
        |snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def snippets $ {} (:range initial-code-sample) (:literals "|println 1\n\nprintln true false\n\nprintln \"|this is a string\"\n\nprintln :keyword-a\n") (:structures "|println $ [] 1 2 3 4\n\nprintln $ {}\n  :a 10\n  :b $ [] 20\n  :c $ {}\n    :d true\n\nprintln $ #{} :a :b :c\n\nlet\n    Demo $ defrecord Demo :name :data\n  println \"|special structure a record\"\n    %{} Demo\n      :name |demo\n      :data 1\n") (:list-ops "|println $ [] 1 2 3 4\n\nprintln $ range 100\n\nprintln $ foldl (range 20) 0 &+\n\nprintln $ append (range 10) 11\n\nprintln $ slice (range 10) 4 6\n") (:threads "|-> (range 10)\n  map $ fn (x) $ * x x\n  foldl 0 &+\n  println\n\n->\n  {}\n    :a 1\n    :b 20\n  map-kv $ fn (k v)\n    [] v k\n  println\n")
          :examples $ []
          :schema $ :: 'Dynamic
        |style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-body $ {}
              |& $ {} (:overscroll-behavior-y :none) (:overscroll-behavior-x :none) (:padding-left 4)
          :examples $ []
          :schema $ :: 'Dynamic
        |style-code $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-code $ {}
              |& $ {} (:height |100%) (:padding |8px)
                :border-color $ hsl 200 80 80
                :border-radius |6px
                ; :outline $ str "|1px solid " (hsl 200 80 60)
          :examples $ []
          :schema $ :: 'Dynamic
        |style-header $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-header $ {}
              |& $ {} (:padding "|0 8px")
          :examples $ []
          :schema $ :: 'Dynamic
        |style-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-logo $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        |style-result $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle style-result $ {}
              |& $ {} (:background-color |#eee) (:padding "|24px 8px 200px 8px") (:line-height |1.4) (:font-size 13)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a pre
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            |../pkg/calcit_wasm_play :refer $ run-code
            |@mvc-works/codearea :refer $ codearea
            respo-ui.comp :refer $ comp-tabs
    |app.config $ %{} 'FileEntry
      :defs $ {}
        |dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        |site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key |workflow)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    |app.main $ %{} 'FileEntry
      :defs $ {}
        |*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Dynamic
        |dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= op :states
                js/console.log |Dispatch: op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Dynamic
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if (= |hidden js/document.visibilityState) (persist-storage!)
              flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (js-present? raw)
                  dispatch! $ :: :hydrate-storage
                    parse-cirru-edn $ unsafe-coerce raw String
              -> (init)
                .!then $ fn (w) (js/console.log "|loaded wasm" w)
              register-log!
              println "|App started."
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        |persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "|Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |register-log! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn register-log! ()
              js-set js/window |_calcit_log $ fn (content)
                let
                    result-el $ unsafe-coerce (js/document.querySelector |#result) JsObject
                    inner-text $ unsafe-coerce (.-innerText result-el) String
                  set! (.-innerText result-el) (str inner-text &newline content)
              js-set js/window |_calcit_error $ fn (content)
                let
                    result-el $ unsafe-coerce (js/document.querySelector |#result) JsObject
                    inner-text $ unsafe-coerce (.-innerText result-el) String
                  set! (.-innerText result-el) (str inner-text &newline content)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Dynamic
        |render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
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
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            |../pkg/calcit_wasm_play :default init
    |app.schema $ %{} 'FileEntry
      :defs $ {}
        |store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} 'FileEntry
      :defs $ {}
        |updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                (:states cursor s) (update-states store cursor s)
                (:hydrate-storage data) data
                _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
