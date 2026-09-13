
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'EditorElementHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait EditorElementHost (:value 'String) (:inner-text 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :inner-text |innerText
            :writable $ #{} :inner-text
          :schema $ :: 'Trait
        'comp-codearea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-codearea (s)
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
                    , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ option:unwrap-or (get reel :store) ({})
                states $ option:unwrap-or (get reel :states) ({})
                cursor $ option:unwrap-or (get states :cursor) ([])
                state $ or
                  option:unwrap-or (get states :data) nil
                  {} (:content |) (:snippet :range)
              div
                {} $ :class-name $ str-spaced css/preset css/fullscreen css/global css/column
                comp-nav
                div
                  {} $ :class-name $ str-spaced css/expand css/row style-body
                  comp-tabs
                    respo-ui.schema/make-tabs-options
                      option:unwrap-or
                        assert-type (get state :snippet) (:: 'Option 'Tag)
                        , :range
                      %some true
                      %none
                      %none
                    , snippet-tabs $ fn (info d!)
                      hint-fn $ {}
                        :args $ [] (:: 'respo-ui.schema/TabRoute 'Tag) 'DynFn
                        :return 'Unit
                      match info $
                        :tab selected label
                        d!.call cursor $ assoc state :snippet selected
                  comp-codearea $ option:unwrap-or (get state :snippet) :range
                  pre
                    {}
                      :class-name $ str-spaced css/expand css/font-code style-result
                      :id |result
                    <> "|;; logs in Console, open Console to read"
              when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'comp-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-nav ()
            div
              {} $ :class-name $ str-spaced css/row-parted style-header
              div
                {} $ :class-name $ str-spaced css/row-middle
                <> "|Playground of"
                =< 4 nil
                a $ {} (:href |http://calcit-lang.org) (:class-name style-logo) (:target |_blank) (:inner-text |Calcit)
                =< 16 nil
                a $ {}
                  :href |https://github.com/calcit-lang/calcit/discussions/79#discussioncomment-1653493
                  :target |_blank
                  :inner-text |Examples
                =< 16 nil
                button $ {} (:class-name css/button) (:inner-text |Run)
                  :on-click $ fn (e d!) (run-calcit!)
              div ({})
                a $ {} (:href |https://github.com/calcit-lang/calcit-wasm-play) (:target |_blank) (:inner-text "|Git Repo")
          :examples $ []
          :schema $ :: 'Dynamic
        'effect-codearea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-codearea (ss) (action el at?)
            when (= action :mount)
              -> el .-value $ set! initial-code-sample
              js/setTimeout $ fn () $ codearea el
            when (= action :update)
              -> el .-value $ set! $ option:unwrap-or (get snippets ss) initial-code-sample
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'initial-code-sample $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-code-sample "|\nprintln (range 100)\n\nprintln $ str \"|hello world\"\n\nlet\n    fact $ fn (acc x)\n      if (>= x 1)\n        recur (* x acc) (dec x)\n        , acc\n  println $ fact 1 10\n"
          :examples $ []
          :schema $ :: 'Dynamic
        'run-calcit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-calcit! ()
            let
                code-el $ unsafe-coerce (js/document.querySelector |#code) 'app.comp.container/EditorElementHost
                result-el $ unsafe-coerce (js/document.querySelector |#result) 'app.comp.container/EditorElementHost
                code $ unsafe-coerce (.-value code-el) String
                _v $ set! (.-innerText result-el) |
                start $ unsafe-coerce (js/performance.now) Number
                result $ run-code code
                cost $ -
                  unsafe-coerce (js/performance.now) Number
                  , start
                inner-text $ unsafe-coerce (.-innerText result-el) String
              set! (.-innerText result-el)
                str inner-text &newline &newline result &newline &newline cost |ms
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'snippet-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snippet-tabs
            [] (%:: respo-ui.schema/TabRoute :tab :range |Range) (%:: respo-ui.schema/TabRoute :tab :literals |Literals) (%:: respo-ui.schema/TabRoute :tab :list-ops "|List Ops") (%:: respo-ui.schema/TabRoute :tab :structures |Structures) (%:: respo-ui.schema/TabRoute :tab :threads |Threads)
          :examples $ []
          :schema $ :: 'List $ :: 'respo-ui.schema/TabRoute 'Tag
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snippets
            {} (:range initial-code-sample)
              :literals "|println 1\n\nprintln true false\n\nprintln \"|this is a string\"\n\nprintln :keyword-a\n"
              :structures "|println $ [] 1 2 3 4\n\nprintln $ {}\n  :a 10\n  :b $ [] 20\n  :c $ {}\n    :d true\n\nprintln $ #{} :a :b :c\n\nlet\n    Demo $ defrecord Demo :name :data\n  println \"|special structure a record\"\n    %{} Demo\n      :name |demo\n      :data 1\n"
              :list-ops "|println $ [] 1 2 3 4\n\nprintln $ range 100\n\nprintln $ foldl (range 20) 0 &+\n\nprintln $ append (range 10) 11\n\nprintln $ slice (range 10) 4 6\n"
              :threads "|-> (range 10)\n  map $ fn (x) $ * x x\n  foldl 0 &+\n  println\n\n->\n  {}\n    :a 1\n    :b 20\n  map-kv $ fn (k v)\n    [] v k\n  println\n"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-body
            {} $ |& $ {} (:overscroll-behavior-y :none) (:overscroll-behavior-x :none) (:padding-left 4)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code
            {} $ |& $ {} (:height |100%) (:padding |8px)
              :border-color $ hsl 200 80 80
              :border-radius |6px
              ; :outline $ str "|1px solid " $ hsl 200 80 60
          :examples $ []
          :schema $ :: 'Dynamic
        'style-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-header
            {} $ |& $ {} (:padding "|0 8px")
          :examples $ []
          :schema $ :: 'Dynamic
        'style-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-logo ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'style-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-result
            {} $ |& $ {} (:background-color |#eee) (:padding "|24px 8px 200px 8px") (:line-height |1.4) (:font-size 13)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a pre
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            |../pkg/calcit_wasm_play :refer $ run-code
            |@mvc-works/codearea :refer $ codearea
            respo-ui.comp :refer $ comp-tabs
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |workflow
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ not= op :states
              js/console.log |Dispatch: op
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            js/window.addEventListener |visibilitychange $ fn (event)
              if
                = |hidden $ unsafe-coerce js/document.visibilityState String
                persist-storage!
            flipped js/setInterval 60000 persist-storage!
            let
                raw $ js/localStorage.getItem $ :storage-key config/site
              when (js-present? raw)
                dispatch! $ :: :hydrate-storage $ parse-cirru-edn (unsafe-coerce raw String)
            -> (init)
              .!then $ fn (w) (js/console.log "|loaded wasm" w)
            register-log!
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target () (js/document.querySelector |.app)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ date-now-snapshot
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ :store @*reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'register-log! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn register-log! ()
            js-set js/window |_calcit_log $ fn (content)
              let
                  result-el $ unsafe-coerce (js/document.querySelector |#result) 'app.comp.container/EditorElementHost
                  inner-text $ unsafe-coerce (.-inner-text result-el) String
                set! (.-inner-text result-el) (str inner-text &newline content)
            js-set js/window |_calcit_error $ fn (content)
              let
                  result-el $ unsafe-coerce (js/document.querySelector |#result) 'app.comp.container/EditorElementHost
                  inner-text $ unsafe-coerce (.-inner-text result-el) String
                set! (.-inner-text result-el) (str inner-text &newline content)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ assert-type (refresh-reel @*reel schema/store updater) (:: 'Map 'Tag 'Dynamic)
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
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
            js-ffi.shared :refer $ date-now-snapshot
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s) (update-states store cursor s)
              (:hydrate-storage data) data
              _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/store)
            :args $ [] 'app.schema/store 'Dynamic 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
