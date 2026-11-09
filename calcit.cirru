
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'append-result! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn append-result! (content)
            let
                element $ .unwrap $ browser/query-selector |#result
                previous $ contract/expect-string |result.innerText $ js/Reflect.get element |innerText
              js/Reflect.set element |innerText $ str previous &newline content
            , &unit
          :examples $ []
          :schema $ quote $ Fn String (-> Unit) (:features :js-ffi)
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
                      keycode $ .unwrap-or (get e :keycode) 0
                      meta? $ .unwrap-or (get e :meta?) false
                      event $ .unwrap-or (get e :event) (js-object)
                    when
                      and (= 13 keycode) meta?
                      run-calcit!
                      .!preventDefault event
                    , &unit
          :examples $ []
          :schema $ quote $ Fn Tag (-> respo.schema/Component) (:features :js-ffi)
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control)
            let
                store $ :store reel
                states $ :states store
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) ([])
                  List respo.schema/CoordKey
                state $ match (get states :data)
                  (:some data) (decode-map-as data 'app.schema/SnippetState)
                  (:none) (schema/SnippetState :content | :snippet :range)
              div
                {} $ :class-name $ str-spaced css/preset css/fullscreen css/global css/column
                comp-nav
                div
                  {} $ :class-name $ str-spaced css/expand css/row style-body
                  comp-tabs
                    respo-ui.schema/TabsOptions :selected
                      Option :some $ :snippet state
                      , :vertical? $ Option :some true
                    , snippet-tabs $ fn (info d!)
                      hint-fn $ Fn (respo-ui.schema/TabRoute Tag)
                        Fn app.schema/Op $ -> Unit
                        -> Unit
                      match info $
                        :tab selected label
                        d! $ schema/Op :select-snippet cursor $ schema/SnippetState :content (:content state) :snippet selected
                  comp-codearea $ :snippet state
                  pre
                    {}
                      :class-name $ str-spaced css/expand css/font-code style-result
                      :id |result
                    <> "|;; logs in Console, open Console to read"
                if dev?
                  Option :some $ comp-controlled-reel reel ({}) on-control
                  Option :none
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.schema/Op app.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
        'comp-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-nav ()
            div
              {} $ :class-name $ str-spaced css/row-parted style-header
              div
                {} $ :class-name $ str-spaced css/row-middle
                <> "|Playground of"
                space-x 4
                a $ {} (:href |http://calcit-lang.org) (:class-name style-logo) (:target |_blank) (:inner-text |Calcit)
                space-x 16
                a $ {}
                  :href |https://github.com/calcit-lang/calcit/discussions/79#discussioncomment-1653493
                  :target |_blank
                  :inner-text |Examples
                space-x 16
                button $ {} (:class-name css/button) (:inner-text |Run)
                  :on-click $ fn (e d!) (run-calcit!)
              div ({})
                a $ {} (:href |https://github.com/calcit-lang/calcit-wasm-play) (:target |_blank) (:inner-text "|Git Repo")
          :examples $ []
          :schema $ quote $ Fn (-> respo.schema/Component)
        'effect-codearea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-codearea (ss) (action el at?)
            when (= action :mount)
              browser/element-set-value! (browser/element-host el)
                .unwrap-or
                  get snippets $ decode-map-as ss 'Tag
                  , initial-code-sample
              browser/set-timeout!
                fn () (codearea el) &unit
                , 0
            when (= action :update)
              browser/element-set-value! (browser/element-host el)
                .unwrap-or
                  get snippets $ decode-map-as ss 'Tag
                  , initial-code-sample
          :examples $ []
          :schema $ quote $ Fn Tag (-> respo.schema/Effect) (:features :js-ffi)
        'initial-code-sample $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-code-sample "|\nprintln (range 100)\n\nprintln $ str \"|hello world\"\n\nlet\n    fact $ fn (acc x)\n      if (>= x 1)\n        recur (* x acc) (dec x)\n        , acc\n  println $ fact 1 10\n"
          :examples $ []
          :schema $ quote String
        'run-calcit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-calcit! ()
            let
                code-el $ .unwrap $ browser/query-selector |#code
                result-el $ .unwrap $ browser/query-selector |#result
                code $ browser/element-value code-el
                _v $ js/Reflect.set result-el |innerText |
                start $ shared/performance-now
                result $ contract/expect-string |run-code $ run-code code
                cost $ - (shared/performance-now) start
              append-result! $ str &newline result &newline &newline cost |ms
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'snippet-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snippet-tabs
            [] (%:: respo-ui.schema/TabRoute :tab :range |Range) (%:: respo-ui.schema/TabRoute :tab :literals |Literals) (%:: respo-ui.schema/TabRoute :tab :list-ops "|List Ops") (%:: respo-ui.schema/TabRoute :tab :structures |Structures) (%:: respo-ui.schema/TabRoute :tab :threads |Threads)
          :examples $ []
          :schema $ quote $ List (respo-ui.schema/TabRoute Tag)
        'snippets $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def snippets
            {} (:range initial-code-sample)
              :literals "|println 1\n\nprintln true false\n\nprintln \"|this is a string\"\n\nprintln :keyword-a\n"
              :structures "|println $ [] 1 2 3 4\n\nprintln $ {}\n  :a 10\n  :b $ [] 20\n  :c $ {}\n    :d true\n\nprintln $ #{} :a :b :c\n\nlet\n    Demo $ defstruct Demo (:name 'String) (:data 'Number)\n  println \"|special structure a Struct\"\n    %{} Demo\n      :name |demo\n      :data 1\n"
              :list-ops "|println $ [] 1 2 3 4\n\nprintln $ range 100\n\nprintln $ .foldl (range 20) 0 &+\n\nprintln $ .append (range 10) 11\n\nprintln $ .slice (range 10) 4 $ Option :some 6\n"
              :threads "|-> (range 10)\n  map $ fn (x) $ * x x\n  .foldl 0 &+\n  println\n\n->\n  {}\n    :a 1\n    :b 20\n  filter-map-kv $ fn (k v)\n    MapEntryDecision :keep v k\n  println\n"
          :examples $ []
          :schema $ quote $ Map Tag String
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-body
            {} $ |& $ {} (:overscroll-behavior-y :none) (:overscroll-behavior-x :none) (:padding-left 4)
          :examples $ []
          :schema $ quote String
        'style-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code
            {} $ |& $ {} (:height |100%) (:padding |8px)
              :border-color $ hsl 200 80 80
              :border-radius |6px
              ; :outline $ str "|1px solid " $ hsl 200 80 60
          :examples $ []
          :schema $ quote String
        'style-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-header
            {} $ |& $ {} (:padding "|0 8px")
          :examples $ []
          :schema $ quote String
        'style-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-logo ({})
          :examples $ []
          :schema $ quote String
        'style-result $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-result
            {} $ |& $ {} (:background-color |#eee) (:padding "|24px 8px 200px 8px") (:line-height |1.4) (:font-size 13)
          :examples $ []
          :schema $ quote String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> div button textarea span input a pre
            respo.comp.space :refer $ space-x
            reel.comp.reel :refer $ comp-controlled-reel
            app.config :refer $ dev?
            |../pkg/calcit_wasm_play :refer $ run-code
            |@mvc-works/codearea :refer $ codearea
            respo-ui.comp :refer $ comp-tabs
            app.schema :as schema
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            js-ffi.contract :as contract
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'Site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def Site
            defstruct Site $ :storage-key String
          :examples $ []
          :schema $ quote StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            %{} Site $ :storage-key |workflow
          :examples $ []
          :schema $ quote app.config/Site
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            typed/State :base schema/store :store schema/store :records schema/empty-records :pointer (Option :none) :stopped? false :display? false :merged? false
          :examples $ []
          :schema $ quote $ Ref (reel.typed/State app.schema/Op app.schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ js/console.log |Dispatch: op
            reset! *reel $ match op
              (reel.typed/Control control) (typed/apply-control updater @*reel control)
              (app.schema/Op action)
                typed/record-op updater @*reel action (generate-id!) (now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/ResolvedOp (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            let
                restored $ match
                  browser/storage-get $ :storage-key config/site
                  (:some raw) (restore-storage! raw)
                  (:none) (Result :ok &unit)
              render-app!
              add-watch! *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k on-reel-control!
              match restored
                (:ok _)
                  do
                    browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
                    browser/document-add-event-listener! |visibilitychange $ fn (event)
                      match (browser/visibility-state)
                        (:hidden) (persist-storage!)
                        _ &unit
                    browser/set-interval! persist-storage! 60000
                    , &unit
                (:err error)
                  do
                    hud! |error $ str "|Could not restore saved state. Automatic saving is paused: " error
                    , &unit
            -> (init)
              .!then $ fn (w) (js/console.log "|loaded wasm" w) &unit
            register-log!
            println "|App started."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ respo-dom/query-selector |.app
          :examples $ []
          :schema $ quote $ Fn (-> respo.dom/DomElement) (:features :js-ffi)
        'on-reel-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-reel-control! (control) (dispatch! control)
          :examples $ []
          :schema $ quote $ Fn reel.typed/Control (-> Unit) (:features :js-ffi)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ date-now-snapshot
            browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ {} $ :states
                :states $ :store @*reel
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'read-saved-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-saved-store (raw)
            match (raw.parse-cirru-edn)
              (:ok data) (try-decode-map-as data 'app.schema/Store)
              (:err error) (Result :err error)
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Result app.schema/Store String
          :tests $ [] $ %{} 'TestEntry (:name |validates-saved-store)
            :code $ quote $ do
              assert= true $ .ok? $ read-saved-store "|{} (:states ({} (:cursor ([]))))"
              assert= false $ .ok? $ read-saved-store "|{} (:states false)"
              assert= false $ .ok? $ read-saved-store "|)"
            :tags $ #{} :unit
        'register-log! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn register-log! ()
            js-set js/window |_calcit_log $ fn (content)
              append-result! $ contract/expect-string |WASM-log content
            js-set js/window |_calcit_error $ fn (content)
              append-result! $ contract/expect-string |WASM-error content
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! (mount-target)
              fn ()
                hint-fn $ Fn $ -> respo.schema/Component
                comp-container @*reel on-reel-control!
              fn (op)
                hint-fn $ Fn app.schema/Op $ -> Unit
                dispatch! op
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'restore-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn restore-storage! (raw)
            match (read-saved-store raw)
              (:ok store)
                do
                  dispatch! $ schema/Op :hydrate-storage store
                  Result :ok &unit
              (:err error) (Result :err error)
          :examples $ []
          :schema $ quote $ Fn String
            -> $ Result Unit String
            :features :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container append-result!
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            |../pkg/calcit_wasm_play :default init
            js-ffi.shared :refer $ date-now-snapshot now-ms
            reel.typed :as typed
            js-ffi.contract :as contract
            js-ffi.browser :as browser
            respo.ffi.browser :as respo-dom
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :select-snippet (List respo.schema/CoordKey) app.schema/SnippetState
            :hydrate-storage app.schema/Store
          :examples $ []
          :schema $ quote EnumDef
        'ResolvedOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ResolvedOp Op reel.typed/Control
          :examples $ []
          :schema $ quote UnionDef
        'SnippetState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SnippetState (:content String) (:snippet Tag)
          :examples $ []
          :schema $ quote StructDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map Tag Dynamic
          :examples $ []
          :schema $ quote StructDef
        'empty-records $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def empty-records ([])
          :examples $ []
          :schema $ quote $ List (reel.typed/Record app.schema/Op)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ quote app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:select-snippet cursor state)
                struct-with store $ :states $ decode-map-as
                  update-state-tree (:states store) cursor $ &struct:to-map state
                  Map Tag Dynamic
              (:hydrate-storage data) data
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-state-tree
