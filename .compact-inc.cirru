
{}
  :added $ {}
  :changed $ {}
    |app.comp.container $ {}
      :added-defs $ {}
      :changed-defs $ {}
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ or (:cursor states) ([])
                state $ or (:data states)
                  {} $ :content "\""
              div
                {} $ :class-name (str-spaced css/preset css/global css/column)
                div
                  {} $ :class-name (str-spaced css/row-middle style-header)
                  a $ {} (:href "\"http://calcit-lang.org") (:class-name style-logo) (:inner-text "\"Calcit Playground")
                  =< 16 nil
                  a $ {} (:href "\"https://github.com/calcit-lang/calcit/discussions/79#discussioncomment-1653493") (:target "\"_blank") (:inner-text "\"Examples")
                  =< 16 nil
                  button $ {} (:class-name css/button) (:inner-text "\"Run")
                  <> "\"Read logs in Console"
                div
                  {} $ :class-name (str-spaced css/expand css/row style-body)
                  textarea $ {}
                    :class-name $ str-spaced css/font-code style-code
                    :spellcheck false
                    :inner-text "\"code here..."
                    :value "\"\n println (range 100)\n\n println $ str \"|hello world\"\n\n let\n     fact $ fn (acc x)\n       if (>= x 1)\n         recur (* x acc) (dec x)\n         , acc\n   println $ fact 1 10"
                  div
                    {} $ :class-name style-result
                    <> "\";; logs in Console, open Console to read"
                when dev? $ comp-reel (>> states :reel) reel ({})
      :removed-defs $ #{}
  :removed $ #{}
