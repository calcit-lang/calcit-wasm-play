
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-codearea $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714498855623) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714498857068) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1714498855623) (:by |rJG4IHzWf) (:text |comp-codearea)
              |h $ %{} :Expr (:at 1714498855623) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714581991814) (:by |rJG4IHzWf) (:text |s)
              |l $ %{} :Expr (:at 1714498859411) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1714498859972) (:by |rJG4IHzWf) (:text |[])
                  |L $ %{} :Expr (:at 1714498860751) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714498865119) (:by |rJG4IHzWf) (:text |effect-codearea)
                      |b $ %{} :Leaf (:at 1714581993248) (:by |rJG4IHzWf) (:text |s)
                  |T $ %{} :Expr (:at 1714498858219) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |textarea)
                      |b $ %{} :Expr (:at 1714498858219) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1714498858219) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Expr (:at 1714498858219) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |css/font-code)
                                  |h $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |css/flex)
                                  |l $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |style-code)
                          |h $ %{} :Expr (:at 1714498858219) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |:spellcheck)
                              |b $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |false)
                          |l $ %{} :Expr (:at 1714498858219) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |:inner-text)
                              |b $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text "|\"code here...")
                          |q $ %{} :Expr (:at 1714498858219) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text |:id)
                              |b $ %{} :Leaf (:at 1714498858219) (:by |rJG4IHzWf) (:text "|\"code")
                          |s $ %{} :Expr (:at 1714499231640) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714499235651) (:by |rJG4IHzWf) (:text |:on-keydown)
                              |b $ %{} :Expr (:at 1714499235935) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714499236445) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1714499236710) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714499237725) (:by |rJG4IHzWf) (:text |e)
                                      |b $ %{} :Leaf (:at 1714499239861) (:by |rJG4IHzWf) (:text |d!)
                                  |h $ %{} :Expr (:at 1714499240747) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714499301731) (:by |rJG4IHzWf) (:text |when)
                                      |b $ %{} :Expr (:at 1714499248406) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714499248945) (:by |rJG4IHzWf) (:text |and)
                                          |b $ %{} :Expr (:at 1714499291879) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1714499292347) (:by |rJG4IHzWf) (:text |=)
                                              |L $ %{} :Leaf (:at 1714499293328) (:by |rJG4IHzWf) (:text |13)
                                              |T $ %{} :Expr (:at 1714499249580) (:by |rJG4IHzWf)
                                                :data $ {}
                                                  |b $ %{} :Leaf (:at 1714499354029) (:by |rJG4IHzWf) (:text |:keycode)
                                                  |h $ %{} :Leaf (:at 1714499254239) (:by |rJG4IHzWf) (:text |e)
                                          |h $ %{} :Expr (:at 1714499264351) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1714499266943) (:by |rJG4IHzWf) (:text |:meta?)
                                              |b $ %{} :Leaf (:at 1714499268652) (:by |rJG4IHzWf) (:text |e)
                                          |l $ %{} :Expr (:at 1714499269068) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1714499271956) (:by |rJG4IHzWf) (:text |:shift?)
                                              |h $ %{} :Leaf (:at 1714499272559) (:by |rJG4IHzWf) (:text |e)
                                      |h $ %{} :Expr (:at 1714499277928) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714499280263) (:by |rJG4IHzWf) (:text |run-calcit!)
                                      |l $ %{} :Expr (:at 1714499303161) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714499308389) (:by |rJG4IHzWf) (:text |.!preventDefault)
                                          |b $ %{} :Expr (:at 1714499311432) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1714499312987) (:by |rJG4IHzWf) (:text |:event)
                                              |T $ %{} :Leaf (:at 1714499309503) (:by |rJG4IHzWf) (:text |e)
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461830530) (:by |root) (:text |reel)
              |v $ %{} :Expr (:at 1507461832154) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507461833421) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1507461834351) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1507461834650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461835738) (:by |root) (:text |store)
                          |j $ %{} :Expr (:at 1507461836110) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461837276) (:by |root) (:text |:store)
                              |j $ %{} :Leaf (:at 1507461838285) (:by |root) (:text |reel)
                      |j $ %{} :Expr (:at 1509727104820) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1509727105928) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1509727106316) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1509727107223) (:by |root) (:text |:states)
                              |j $ %{} :Leaf (:at 1626777497473) (:by |rJG4IHzWf) (:text |store)
                      |n $ %{} :Expr (:at 1584780921790) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780923771) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1584780991636) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1627849325504) (:by |rJG4IHzWf) (:text |or)
                              |T $ %{} :Expr (:at 1584780923944) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780925829) (:by |rJG4IHzWf) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1584780926681) (:by |rJG4IHzWf) (:text |states)
                              |b $ %{} :Expr (:at 1679237728653) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1679237728821) (:by |rJG4IHzWf) (:text |[])
                      |r $ %{} :Expr (:at 1584780887905) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584780889620) (:by |rJG4IHzWf) (:text |state)
                          |j $ %{} :Expr (:at 1584780889933) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1627849327831) (:by |rJG4IHzWf) (:text |or)
                              |j $ %{} :Expr (:at 1584780894090) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780894689) (:by |rJG4IHzWf) (:text |:data)
                                  |j $ %{} :Leaf (:at 1584780900314) (:by |rJG4IHzWf) (:text |states)
                              |r $ %{} :Expr (:at 1584780901014) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584780901408) (:by |rJG4IHzWf) (:text |{})
                                  |j $ %{} :Expr (:at 1584780901741) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584780906050) (:by |rJG4IHzWf) (:text |:content)
                                      |j $ %{} :Leaf (:at 1584780907617) (:by |rJG4IHzWf) (:text "|\"")
                                  |n $ %{} :Expr (:at 1714581803486) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714581805929) (:by |rJG4IHzWf) (:text |:snippet)
                                      |b $ %{} :Leaf (:at 1714581985127) (:by |rJG4IHzWf) (:text |:range)
                  |T $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695659805533) (:by |rJG4IHzWf) (:text |:class-name)
                              |j $ %{} :Expr (:at 1499755354983) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695659808341) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1701711029710) (:by |rJG4IHzWf) (:text |css/preset)
                                  |f $ %{} :Leaf (:at 1714497803985) (:by |rJG4IHzWf) (:text |css/fullscreen)
                                  |j $ %{} :Leaf (:at 1695659810151) (:by |rJG4IHzWf) (:text |css/global)
                                  |r $ %{} :Leaf (:at 1714408548622) (:by |rJG4IHzWf) (:text |css/column)
                      |o $ %{} :Expr (:at 1714581417445) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581419572) (:by |rJG4IHzWf) (:text |comp-nav)
                      |t $ %{} :Expr (:at 1714408326766) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714408327728) (:by |rJG4IHzWf) (:text |div)
                          |b $ %{} :Expr (:at 1714408327930) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714408328260) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1714408328522) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714408329886) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1714408584339) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1714408586443) (:by |rJG4IHzWf) (:text |str-spaced)
                                      |L $ %{} :Leaf (:at 1714408603102) (:by |rJG4IHzWf) (:text |css/expand)
                                      |P $ %{} :Leaf (:at 1714408594381) (:by |rJG4IHzWf) (:text |css/row)
                                      |T $ %{} :Leaf (:at 1714408332319) (:by |rJG4IHzWf) (:text |style-body)
                          |d $ %{} :Expr (:at 1714581791835) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714581792164) (:by |rJG4IHzWf) (:text |comp-tabs)
                              |b $ %{} :Expr (:at 1714581794859) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581795199) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1714581795485) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714581797531) (:by |rJG4IHzWf) (:text |:selected)
                                      |b $ %{} :Expr (:at 1714581812777) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714581814049) (:by |rJG4IHzWf) (:text |:snippet)
                                          |b $ %{} :Leaf (:at 1714581815739) (:by |rJG4IHzWf) (:text |state)
                                  |h $ %{} :Expr (:at 1714581947380) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714581950379) (:by |rJG4IHzWf) (:text |:vertical?)
                                      |b $ %{} :Leaf (:at 1714581951319) (:by |rJG4IHzWf) (:text |true)
                              |h $ %{} :Leaf (:at 1714581828727) (:by |rJG4IHzWf) (:text |snippet-tabs)
                              |l $ %{} :Expr (:at 1714581861620) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581861868) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1714581862105) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714581862702) (:by |rJG4IHzWf) (:text |info)
                                      |b $ %{} :Leaf (:at 1714581863448) (:by |rJG4IHzWf) (:text |d!)
                                  |h $ %{} :Expr (:at 1714581865449) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714581868701) (:by |rJG4IHzWf) (:text |d!)
                                      |b $ %{} :Leaf (:at 1714581869898) (:by |rJG4IHzWf) (:text |cursor)
                                      |h $ %{} :Expr (:at 1714581871787) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714581873762) (:by |rJG4IHzWf) (:text |assoc)
                                          |b $ %{} :Leaf (:at 1714581874527) (:by |rJG4IHzWf) (:text |state)
                                          |e $ %{} :Leaf (:at 1714581892771) (:by |rJG4IHzWf) (:text |:snippet)
                                          |h $ %{} :Expr (:at 1714581883520) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1714581884167) (:by |rJG4IHzWf) (:text |nth)
                                              |b $ %{} :Leaf (:at 1714581888692) (:by |rJG4IHzWf) (:text |info)
                                              |h $ %{} :Leaf (:at 1714581889142) (:by |rJG4IHzWf) (:text |1)
                          |g $ %{} :Expr (:at 1714498848675) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498853510) (:by |rJG4IHzWf) (:text |comp-codearea)
                              |b $ %{} :Expr (:at 1714581975268) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581976675) (:by |rJG4IHzWf) (:text |:snippet)
                                  |b $ %{} :Leaf (:at 1714581979615) (:by |rJG4IHzWf) (:text |state)
                          |l $ %{} :Expr (:at 1714408421036) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1715847144290) (:by |rJG4IHzWf) (:text |pre)
                              |b $ %{} :Expr (:at 1714408422475) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714408422855) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1714408423159) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714408426553) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1714497698598) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1714497701415) (:by |rJG4IHzWf) (:text |str-spaced)
                                          |L $ %{} :Leaf (:at 1714582294724) (:by |rJG4IHzWf) (:text |css/expand)
                                          |P $ %{} :Leaf (:at 1714497855480) (:by |rJG4IHzWf) (:text |css/font-code)
                                          |T $ %{} :Leaf (:at 1714408428310) (:by |rJG4IHzWf) (:text |style-result)
                                  |h $ %{} :Expr (:at 1714498180013) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714498181323) (:by |rJG4IHzWf) (:text |:id)
                                      |b $ %{} :Leaf (:at 1714498182796) (:by |rJG4IHzWf) (:text "|\"result")
                              |h $ %{} :Expr (:at 1714408439169) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714408440848) (:by |rJG4IHzWf) (:text |<>)
                                  |b $ %{} :Leaf (:at 1714408442358) (:by |rJG4IHzWf) (:text "|\";; logs in Console, open Console to read")
                      |x $ %{} :Expr (:at 1521954055333) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521954057510) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1521954059290) (:by |root) (:text |dev?)
                          |T $ %{} :Expr (:at 1507461809635) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461815046) (:by |root) (:text |comp-reel)
                              |b $ %{} :Expr (:at 1584780610581) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584780611347) (:by |rJG4IHzWf) (:text |>>)
                                  |T $ %{} :Leaf (:at 1509727101297) (:by |root) (:text |states)
                                  |j $ %{} :Leaf (:at 1584780613268) (:by |rJG4IHzWf) (:text |:reel)
                              |j $ %{} :Leaf (:at 1507461840459) (:by |root) (:text |reel)
                              |r $ %{} :Expr (:at 1507461840980) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507461841342) (:by |root) (:text |{})
        |comp-nav $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714581420812) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714581422641) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1714581420812) (:by |rJG4IHzWf) (:text |comp-nav)
              |e $ %{} :Expr (:at 1714581425067) (:by |rJG4IHzWf)
                :data $ {}
              |h $ %{} :Expr (:at 1714581429463) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1714581430716) (:by |rJG4IHzWf) (:text |div)
                  |L $ %{} :Expr (:at 1714581430987) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714581431361) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1714581436293) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581436293) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Expr (:at 1714581436293) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714581436293) (:by |rJG4IHzWf) (:text |str-spaced)
                              |b $ %{} :Leaf (:at 1714581445733) (:by |rJG4IHzWf) (:text |css/row-parted)
                              |h $ %{} :Leaf (:at 1714581436293) (:by |rJG4IHzWf) (:text |style-header)
                  |T $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |css/row-middle)
                      |d $ %{} :Expr (:at 1714581518305) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581518663) (:by |rJG4IHzWf) (:text |<>)
                          |b $ %{} :Leaf (:at 1714581525852) (:by |rJG4IHzWf) (:text "|\"Playground of")
                      |e $ %{} :Expr (:at 1714581526445) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581526924) (:by |rJG4IHzWf) (:text |=<)
                          |b $ %{} :Leaf (:at 1714581532143) (:by |rJG4IHzWf) (:text |4)
                          |h $ %{} :Leaf (:at 1714581528160) (:by |rJG4IHzWf) (:text |nil)
                      |g $ %{} :Expr (:at 1714581503618) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581503618) (:by |rJG4IHzWf) (:text |a)
                          |b $ %{} :Expr (:at 1714581503618) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714581503618) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1714581503618) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581503618) (:by |rJG4IHzWf) (:text |:href)
                                  |b $ %{} :Leaf (:at 1714581503618) (:by |rJG4IHzWf) (:text "|\"http://calcit-lang.org")
                              |h $ %{} :Expr (:at 1714581503618) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581503618) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1714581503618) (:by |rJG4IHzWf) (:text |style-logo)
                              |j $ %{} :Expr (:at 1714581606073) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581606073) (:by |rJG4IHzWf) (:text |:target)
                                  |b $ %{} :Leaf (:at 1714581606073) (:by |rJG4IHzWf) (:text "|\"_blank")
                              |l $ %{} :Expr (:at 1714581503618) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581503618) (:by |rJG4IHzWf) (:text |:inner-text)
                                  |b $ %{} :Leaf (:at 1714581512135) (:by |rJG4IHzWf) (:text "|\"Calcit")
                      |l $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |=<)
                          |b $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |16)
                          |h $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |nil)
                      |n $ %{} :Expr (:at 1714581474748) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581474748) (:by |rJG4IHzWf) (:text |a)
                          |b $ %{} :Expr (:at 1714581474748) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714581474748) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1714581474748) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581474748) (:by |rJG4IHzWf) (:text |:href)
                                  |b $ %{} :Leaf (:at 1714581474748) (:by |rJG4IHzWf) (:text "|\"https://github.com/calcit-lang/calcit/discussions/79#discussioncomment-1653493")
                              |h $ %{} :Expr (:at 1714581474748) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581474748) (:by |rJG4IHzWf) (:text |:target)
                                  |b $ %{} :Leaf (:at 1714581474748) (:by |rJG4IHzWf) (:text "|\"_blank")
                              |l $ %{} :Expr (:at 1714581474748) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581474748) (:by |rJG4IHzWf) (:text |:inner-text)
                                  |b $ %{} :Leaf (:at 1714581474748) (:by |rJG4IHzWf) (:text "|\"Examples")
                      |q $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |=<)
                          |b $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |16)
                          |h $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |nil)
                      |s $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |button)
                          |b $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |css/button)
                              |h $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |:inner-text)
                                  |b $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text "|\"Run")
                              |l $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |:on-click)
                                  |b $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |fn)
                                      |b $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |e)
                                          |b $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |d!)
                                      |h $ %{} :Expr (:at 1714581423508) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714581423508) (:by |rJG4IHzWf) (:text |run-calcit!)
                  |b $ %{} :Expr (:at 1714581452658) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714581453253) (:by |rJG4IHzWf) (:text |div)
                      |b $ %{} :Expr (:at 1714581453497) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581453848) (:by |rJG4IHzWf) (:text |{})
                      |h $ %{} :Expr (:at 1714581567935) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714581568691) (:by |rJG4IHzWf) (:text |a)
                          |b $ %{} :Expr (:at 1714581569099) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714581569527) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1714581569932) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581570643) (:by |rJG4IHzWf) (:text |:href)
                                  |b $ %{} :Leaf (:at 1714581571620) (:by |rJG4IHzWf) (:text "|\"https://github.com/calcit-lang/calcit-wasm-play")
                              |e $ %{} :Expr (:at 1714581585108) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581587349) (:by |rJG4IHzWf) (:text |:target)
                                  |b $ %{} :Leaf (:at 1714581591708) (:by |rJG4IHzWf) (:text "|\"_blank")
                              |h $ %{} :Expr (:at 1714581574672) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714581577721) (:by |rJG4IHzWf) (:text |:inner-text)
                                  |b $ %{} :Leaf (:at 1714581580773) (:by |rJG4IHzWf) (:text "|\"Git Repo")
        |effect-codearea $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714498866759) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714498868583) (:by |rJG4IHzWf) (:text |defeffect)
              |b $ %{} :Leaf (:at 1714498866759) (:by |rJG4IHzWf) (:text |effect-codearea)
              |h $ %{} :Expr (:at 1714498866759) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714582024803) (:by |rJG4IHzWf) (:text |ss)
              |l $ %{} :Expr (:at 1714498878992) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714498881248) (:by |rJG4IHzWf) (:text |action)
                  |b $ %{} :Leaf (:at 1714498881614) (:by |rJG4IHzWf) (:text |el)
                  |h $ %{} :Leaf (:at 1714498882503) (:by |rJG4IHzWf) (:text |at?)
              |o $ %{} :Expr (:at 1714498885337) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714499169988) (:by |rJG4IHzWf) (:text |when)
                  |b $ %{} :Expr (:at 1714498886554) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714498886316) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Leaf (:at 1714498887921) (:by |rJG4IHzWf) (:text |action)
                      |h $ %{} :Leaf (:at 1714498889620) (:by |rJG4IHzWf) (:text |:mount)
                  |h $ %{} :Expr (:at 1714498890335) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1714498897261) (:by |rJG4IHzWf) (:text |->)
                      |L $ %{} :Leaf (:at 1714498898153) (:by |rJG4IHzWf) (:text |el)
                      |P $ %{} :Leaf (:at 1714498909089) (:by |rJG4IHzWf) (:text |.-value)
                      |T $ %{} :Expr (:at 1714498899006) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498893765) (:by |rJG4IHzWf) (:text |set!)
                          |b $ %{} :Leaf (:at 1714498925051) (:by |rJG4IHzWf) (:text |initial-code-sample)
                  |l $ %{} :Expr (:at 1714499172792) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714499171589) (:by |rJG4IHzWf) (:text |codearea)
                      |b $ %{} :Leaf (:at 1714499174942) (:by |rJG4IHzWf) (:text |el)
              |q $ %{} :Expr (:at 1714582007087) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714582008361) (:by |rJG4IHzWf) (:text |when)
                  |b $ %{} :Expr (:at 1714582008928) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582009146) (:by |rJG4IHzWf) (:text |=)
                      |b $ %{} :Leaf (:at 1714582010095) (:by |rJG4IHzWf) (:text |action)
                      |h $ %{} :Leaf (:at 1714582011203) (:by |rJG4IHzWf) (:text |:update)
                  |h $ %{} :Expr (:at 1714582015132) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582015132) (:by |rJG4IHzWf) (:text |->)
                      |b $ %{} :Leaf (:at 1714582015132) (:by |rJG4IHzWf) (:text |el)
                      |h $ %{} :Leaf (:at 1714582015132) (:by |rJG4IHzWf) (:text |.-value)
                      |l $ %{} :Expr (:at 1714582015132) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714582015132) (:by |rJG4IHzWf) (:text |set!)
                          |b $ %{} :Expr (:at 1714582054401) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714582064647) (:by |rJG4IHzWf) (:text |either)
                              |X $ %{} :Expr (:at 1714582068259) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714582068985) (:by |rJG4IHzWf) (:text |get)
                                  |b $ %{} :Leaf (:at 1714582071844) (:by |rJG4IHzWf) (:text |snippets)
                                  |h $ %{} :Leaf (:at 1714582073523) (:by |rJG4IHzWf) (:text |ss)
                              |b $ %{} :Leaf (:at 1714582067008) (:by |rJG4IHzWf) (:text |initial-code-sample)
        |initial-code-sample $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714498926049) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714498926049) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1714498926049) (:by |rJG4IHzWf) (:text |initial-code-sample)
              |h $ %{} :Leaf (:at 1714498933947) (:by |rJG4IHzWf) (:text "|\"\nprintln (range 100)\n\nprintln $ str \"|hello world\"\n\nlet\n    fact $ fn (acc x)\n      if (>= x 1)\n        recur (* x acc) (dec x)\n        , acc\n  println $ fact 1 10\n")
        |run-calcit! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714498581248) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714498581248) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1714498581248) (:by |rJG4IHzWf) (:text |run-calcit!)
              |h $ %{} :Expr (:at 1714498581248) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1714498583576) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714498584529) (:by |rJG4IHzWf) (:text |let)
                  |b $ %{} :Expr (:at 1714498584843) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1714498585007) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498596064) (:by |rJG4IHzWf) (:text |code-el)
                          |b $ %{} :Expr (:at 1714498597158) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498611847) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                              |b $ %{} :Leaf (:at 1714498615835) (:by |rJG4IHzWf) (:text "|\"#code")
                      |b $ %{} :Expr (:at 1714498617614) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498621611) (:by |rJG4IHzWf) (:text |result-el)
                          |b $ %{} :Expr (:at 1714498623208) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498623208) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                              |b $ %{} :Leaf (:at 1714498627864) (:by |rJG4IHzWf) (:text "|\"#result")
                      |h $ %{} :Expr (:at 1714498637109) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498637719) (:by |rJG4IHzWf) (:text |code)
                          |b $ %{} :Expr (:at 1714498639827) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1714498642510) (:by |rJG4IHzWf) (:text |.-value)
                              |T $ %{} :Leaf (:at 1714498639635) (:by |rJG4IHzWf) (:text |code-el)
                      |j $ %{} :Expr (:at 1714498756096) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1714498758329) (:by |rJG4IHzWf) (:text |_v)
                          |T $ %{} :Expr (:at 1714498755569) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498755569) (:by |rJG4IHzWf) (:text |->)
                              |b $ %{} :Leaf (:at 1714498755569) (:by |rJG4IHzWf) (:text |result-el)
                              |h $ %{} :Leaf (:at 1714498755569) (:by |rJG4IHzWf) (:text |.-innerText)
                              |l $ %{} :Expr (:at 1714498755569) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714498755569) (:by |rJG4IHzWf) (:text |set!)
                                  |b $ %{} :Leaf (:at 1714498755569) (:by |rJG4IHzWf) (:text "|\"")
                      |l $ %{} :Expr (:at 1714498669001) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498669729) (:by |rJG4IHzWf) (:text |start)
                          |b $ %{} :Expr (:at 1714498670092) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498675020) (:by |rJG4IHzWf) (:text |js/performance.now)
                      |o $ %{} :Expr (:at 1714498686487) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498689578) (:by |rJG4IHzWf) (:text |result)
                          |b $ %{} :Expr (:at 1714498690659) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498692960) (:by |rJG4IHzWf) (:text |run-code)
                              |b $ %{} :Leaf (:at 1714498724515) (:by |rJG4IHzWf) (:text |code)
                      |q $ %{} :Expr (:at 1714498719409) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498719817) (:by |rJG4IHzWf) (:text |cost)
                          |b $ %{} :Expr (:at 1714498726333) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498729437) (:by |rJG4IHzWf) (:text |-)
                              |b $ %{} :Expr (:at 1714498731421) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714498731421) (:by |rJG4IHzWf) (:text |js/performance.now)
                              |h $ %{} :Leaf (:at 1714498733479) (:by |rJG4IHzWf) (:text |start)
                  |l $ %{} :Expr (:at 1714498664241) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714498747257) (:by |rJG4IHzWf) (:text |->)
                      |b $ %{} :Leaf (:at 1714498765472) (:by |rJG4IHzWf) (:text |result-el)
                      |e $ %{} :Leaf (:at 1714499101789) (:by |rJG4IHzWf) (:text |.-innerText)
                      |h $ %{} :Expr (:at 1714498768558) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498769302) (:by |rJG4IHzWf) (:text |set!)
                          |b $ %{} :Expr (:at 1714498769681) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498773762) (:by |rJG4IHzWf) (:text |str)
                              |b $ %{} :Expr (:at 1714498776708) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1714499104882) (:by |rJG4IHzWf) (:text |.-innerText)
                                  |T $ %{} :Leaf (:at 1714498779076) (:by |rJG4IHzWf) (:text |result-el)
                              |h $ %{} :Leaf (:at 1714498794449) (:by |rJG4IHzWf) (:text |&newline)
                              |l $ %{} :Leaf (:at 1714498795562) (:by |rJG4IHzWf) (:text |&newline)
                              |o $ %{} :Leaf (:at 1714498800345) (:by |rJG4IHzWf) (:text |result)
                              |q $ %{} :Leaf (:at 1714498801575) (:by |rJG4IHzWf) (:text |&newline)
                              |s $ %{} :Leaf (:at 1714498802983) (:by |rJG4IHzWf) (:text |&newline)
                              |t $ %{} :Leaf (:at 1714498808333) (:by |rJG4IHzWf) (:text |cost)
                              |u $ %{} :Leaf (:at 1714498809000) (:by |rJG4IHzWf) (:text "|\"ms")
        |snippet-tabs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714581843213) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714581843213) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1714581843213) (:by |rJG4IHzWf) (:text |snippet-tabs)
              |h $ %{} :Expr (:at 1714581843213) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714581846758) (:by |rJG4IHzWf) (:text |[])
                  |b $ %{} :Expr (:at 1714581847141) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714581847371) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1714581848485) (:by |rJG4IHzWf) (:text |:tab)
                      |h $ %{} :Leaf (:at 1714581855301) (:by |rJG4IHzWf) (:text |:range)
                      |l $ %{} :Leaf (:at 1714581857718) (:by |rJG4IHzWf) (:text "|\"range")
                  |h $ %{} :Expr (:at 1714581847141) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714581847371) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1714581848485) (:by |rJG4IHzWf) (:text |:tab)
                      |h $ %{} :Leaf (:at 1714581909380) (:by |rJG4IHzWf) (:text |:literals)
                      |l $ %{} :Leaf (:at 1714581914383) (:by |rJG4IHzWf) (:text "|\"Literals")
                  |l $ %{} :Expr (:at 1714581847141) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714581847371) (:by |rJG4IHzWf) (:text |::)
                      |b $ %{} :Leaf (:at 1714581848485) (:by |rJG4IHzWf) (:text |:tab)
                      |h $ %{} :Leaf (:at 1714581920117) (:by |rJG4IHzWf) (:text |:list-ops)
                      |l $ %{} :Leaf (:at 1714581924498) (:by |rJG4IHzWf) (:text "|\"List Ops")
                  |o $ %{} :Expr (:at 1714582174286) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582174787) (:by |rJG4IHzWf) (:text |::)
                      |X $ %{} :Leaf (:at 1714582178699) (:by |rJG4IHzWf) (:text |:tab)
                      |b $ %{} :Leaf (:at 1714582175262) (:by |rJG4IHzWf) (:text |:structures)
                      |h $ %{} :Leaf (:at 1714582183455) (:by |rJG4IHzWf) (:text "|\"Structures")
                  |q $ %{} :Expr (:at 1714582174286) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582174787) (:by |rJG4IHzWf) (:text |::)
                      |X $ %{} :Leaf (:at 1714582178699) (:by |rJG4IHzWf) (:text |:tab)
                      |b $ %{} :Leaf (:at 1714582199185) (:by |rJG4IHzWf) (:text |:threads)
                      |h $ %{} :Leaf (:at 1714582202910) (:by |rJG4IHzWf) (:text "|\"Threads")
        |snippets $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714582074783) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714582074783) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1714582074783) (:by |rJG4IHzWf) (:text |snippets)
              |h $ %{} :Expr (:at 1714582074783) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714582076456) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1714582077793) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582078343) (:by |rJG4IHzWf) (:text |:range)
                      |b $ %{} :Leaf (:at 1714582282107) (:by |rJG4IHzWf) (:text |initial-code-sample)
                  |h $ %{} :Expr (:at 1714582093664) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582101753) (:by |rJG4IHzWf) (:text |:literals)
                      |b $ %{} :Leaf (:at 1714582103265) (:by |rJG4IHzWf) (:text "|\"println 1\n\nprintln true false\n\nprintln \"|this is a string\"\n\nprintln :keyword-a\n")
                  |l $ %{} :Expr (:at 1714582104502) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582113207) (:by |rJG4IHzWf) (:text |:structures)
                      |b $ %{} :Leaf (:at 1714582114279) (:by |rJG4IHzWf) (:text "|\"println $ [] 1 2 3 4\n\nprintln $ {}\n  :a 10\n  :b $ [] 20\n  :c $ {}\n    :d true\n\nprintln $ #{} :a :b :c\n\nlet\n    Demo $ defrecord Demo :name :data\n  println \"|special structure a record\"\n    %{} Demo\n      :name |demo\n      :data 1\n")
                  |o $ %{} :Expr (:at 1714582115524) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582122465) (:by |rJG4IHzWf) (:text |:list-ops)
                      |b $ %{} :Leaf (:at 1714582126165) (:by |rJG4IHzWf) (:text "|\"println $ [] 1 2 3 4\n\nprintln $ range 100\n\nprintln $ foldl (range 20) 0 &+\n\nprintln $ append (range 10) 11\n\nprintln $ slice (range 10) 4 6\n")
                  |q $ %{} :Expr (:at 1714582128496) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714582139637) (:by |rJG4IHzWf) (:text |:threads)
                      |b $ %{} :Leaf (:at 1714582140976) (:by |rJG4IHzWf) (:text "|\"-> (range 10)\n  map $ fn (x) $ * x x\n  foldl 0 &+\n  println\n\n->\n  {}\n    :a 1\n    :b 20\n  map-kv $ fn (k v)\n    [] v k\n  println\n")
        |style-body $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714408333116) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714408335260) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1714408333116) (:by |rJG4IHzWf) (:text |style-body)
              |h $ %{} :Expr (:at 1714408333116) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714408336735) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1714408562719) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714408564459) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1714408564837) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1714408567703) (:by |rJG4IHzWf) (:text |{})
                          |T $ %{} :Expr (:at 1714408564837) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714408569643) (:by |rJG4IHzWf) (:text |:overscroll-behavior-y)
                              |b $ %{} :Leaf (:at 1714408571800) (:by |rJG4IHzWf) (:text |:none)
                          |b $ %{} :Expr (:at 1714408564837) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714408574694) (:by |rJG4IHzWf) (:text |:overscroll-behavior-x)
                              |b $ %{} :Leaf (:at 1714408576967) (:by |rJG4IHzWf) (:text |:none)
                          |h $ %{} :Expr (:at 1714582356018) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714582358162) (:by |rJG4IHzWf) (:text |:padding-left)
                              |b $ %{} :Leaf (:at 1714582368468) (:by |rJG4IHzWf) (:text |4)
        |style-code $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714408364900) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714408366272) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1714408364900) (:by |rJG4IHzWf) (:text |style-code)
              |h $ %{} :Expr (:at 1714408364900) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714408367457) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1714497762394) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714497763232) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1714497763591) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714497763889) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1714497764269) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714497768848) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1714497770010) (:by |rJG4IHzWf) (:text "|\"100%")
                          |h $ %{} :Expr (:at 1714497770572) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714497771856) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1714497777346) (:by |rJG4IHzWf) (:text "|\"8px")
                          |l $ %{} :Expr (:at 1714582391923) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714582399749) (:by |rJG4IHzWf) (:text |:border-color)
                              |b $ %{} :Expr (:at 1714582399947) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714582400899) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1714582403456) (:by |rJG4IHzWf) (:text |200)
                                  |h $ %{} :Leaf (:at 1714582404330) (:by |rJG4IHzWf) (:text |80)
                                  |l $ %{} :Leaf (:at 1714582404691) (:by |rJG4IHzWf) (:text |80)
                          |o $ %{} :Expr (:at 1714582421391) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714582424256) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1714582427879) (:by |rJG4IHzWf) (:text "|\"6px")
                          |q $ %{} :Expr (:at 1714582434585) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1714582455752) (:by |rJG4IHzWf) (:text |;)
                              |T $ %{} :Leaf (:at 1714582437934) (:by |rJG4IHzWf) (:text |:outline)
                              |b $ %{} :Expr (:at 1714582438319) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714582438800) (:by |rJG4IHzWf) (:text |str)
                                  |b $ %{} :Leaf (:at 1714582441945) (:by |rJG4IHzWf) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1714582444465) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714582446132) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1714582446132) (:by |rJG4IHzWf) (:text |200)
                                      |h $ %{} :Leaf (:at 1714582446132) (:by |rJG4IHzWf) (:text |80)
                                      |l $ %{} :Leaf (:at 1714582449259) (:by |rJG4IHzWf) (:text |60)
        |style-header $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714408169234) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714408173299) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1714408169234) (:by |rJG4IHzWf) (:text |style-header)
              |h $ %{} :Expr (:at 1714408169234) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714408174882) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1714497951711) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714497953046) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1714497953470) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714497953787) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1714497954161) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714497955715) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1714497965142) (:by |rJG4IHzWf) (:text "|\"0 8px")
        |style-logo $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714408218109) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714408219501) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1714408218109) (:by |rJG4IHzWf) (:text |style-logo)
              |h $ %{} :Expr (:at 1714408218109) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714408220652) (:by |rJG4IHzWf) (:text |{})
        |style-result $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714408429211) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714408430678) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1714408429211) (:by |rJG4IHzWf) (:text |style-result)
              |h $ %{} :Expr (:at 1714408429211) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714408432043) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1714497838440) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714497839945) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1714497840297) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714497840604) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1714497841212) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1714497845499) (:by |rJG4IHzWf) (:text |:background-color)
                              |T $ %{} :Leaf (:at 1714497846521) (:by |rJG4IHzWf) (:text "|\"#eee")
                          |h $ %{} :Expr (:at 1714498034541) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498035884) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1714498036545) (:by |rJG4IHzWf) (:text "|\"24px 8px 200px 8px")
                          |l $ %{} :Expr (:at 1714499009496) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714499009496) (:by |rJG4IHzWf) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1714499009496) (:by |rJG4IHzWf) (:text "|\"1.4")
                          |o $ %{} :Expr (:at 1714582322776) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714582325030) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1714582326250) (:by |rJG4IHzWf) (:text |13)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1695659797743) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1695659799627) (:by |rJG4IHzWf) (:text |css)
                |s $ %{} :Expr (:at 1714582408113) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1714582414828) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |b $ %{} :Leaf (:at 1714582415704) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1714582415961) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1714582416387) (:by |rJG4IHzWf) (:text |hsl)
                |t $ %{} :Expr (:at 1695659844346) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695659847085) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1695659847949) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1695659848197) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1695659850247) (:by |rJG4IHzWf) (:text |defstyle)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540958704705) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |l $ %{} :Leaf (:at 1573355389740) (:by |rJG4IHzWf) (:text |defeffect)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584780606618) (:by |rJG4IHzWf) (:text |>>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1552321107012) (:by |rJG4IHzWf) (:text |input)
                        |z $ %{} :Leaf (:at 1714408206075) (:by |rJG4IHzWf) (:text |a)
                        |zD $ %{} :Leaf (:at 1715847149645) (:by |rJG4IHzWf) (:text |pre)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
                |z $ %{} :Expr (:at 1714498695308) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1714498704205) (:by |rJG4IHzWf) (:text "|\"../pkg/calcit_wasm_play")
                    |b $ %{} :Leaf (:at 1714498705353) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1714498705658) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1714498708177) (:by |rJG4IHzWf) (:text |run-code)
                |zD $ %{} :Expr (:at 1714499150570) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1714499151102) (:by |rJG4IHzWf) (:text "|\"@mvc-works/codearea")
                    |b $ %{} :Leaf (:at 1714499152400) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1714499152643) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1714499154311) (:by |rJG4IHzWf) (:text |codearea)
                |zP $ %{} :Expr (:at 1714581779644) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1714581933018) (:by |rJG4IHzWf) (:text |respo-ui.comp)
                    |b $ %{} :Leaf (:at 1714581784159) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1714581784419) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1714581784659) (:by |rJG4IHzWf) (:text |comp-tabs)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544873875614) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1624469709435) (:by |rJG4IHzWf)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1624469715390) (:by |rJG4IHzWf) (:text |=)
                  |D $ %{} :Leaf (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev")
                  |T $ %{} :Expr (:at 1624469701389) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env)
                      |T $ %{} :Leaf (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode")
                      |b $ %{} :Leaf (:at 1658121345573) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text "|\"workflow")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1547437686766) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                  |L $ %{} :Expr (:at 1584874661674) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1584874662518) (:by |rJG4IHzWf) (:text |and)
                      |T $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                      |j $ %{} :Expr (:at 1584874663522) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Leaf (:at 1584874665829) (:by |rJG4IHzWf) (:text |op)
                          |r $ %{} :Leaf (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1692546015701) (:by |rJG4IHzWf) (:text |js/console.log)
                      |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
              |v $ %{} :Expr (:at 1636914348413) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636914349962) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636914352112) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yM $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1695833113543) (:by |rJG4IHzWf) (:text ||visibilitychange)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1695833124329) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695833125950) (:by |rJG4IHzWf) (:text |if)
                          |L $ %{} :Expr (:at 1695833126511) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695833145858) (:by |rJG4IHzWf) (:text |=)
                              |L $ %{} :Leaf (:at 1695833179425) (:by |rJG4IHzWf) (:text "|\"hidden")
                              |T $ %{} :Leaf (:at 1695833167249) (:by |rJG4IHzWf) (:text |js/document.visibilityState)
                          |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yO $ %{} :Expr (:at 1646150039456) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped)
                  |T $ %{} :Leaf (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |b $ %{} :Leaf (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000)
                  |h $ %{} :Leaf (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |j $ %{} :Expr (:at 1688397806134) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688397806833) (:by |rJG4IHzWf) (:text |::)
                              |T $ %{} :Leaf (:at 1518157669936) (:by |root) (:text |:hydrate-storage)
                              |b $ %{} :Expr (:at 1688397811073) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688397811073) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |b $ %{} :Leaf (:at 1688397811073) (:by |rJG4IHzWf) (:text |raw)
              |yQ $ %{} :Expr (:at 1714498431089) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1714498431735) (:by |rJG4IHzWf) (:text |->)
                  |T $ %{} :Expr (:at 1714498426821) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714498428308) (:by |rJG4IHzWf) (:text |init)
                  |b $ %{} :Expr (:at 1714498445606) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714498448302) (:by |rJG4IHzWf) (:text |.!then)
                      |b $ %{} :Expr (:at 1714498448655) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498449269) (:by |rJG4IHzWf) (:text |fn)
                          |b $ %{} :Expr (:at 1714498449629) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498455775) (:by |rJG4IHzWf) (:text |w)
                          |h $ %{} :Expr (:at 1714498456148) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1714498458793) (:by |rJG4IHzWf) (:text |js/console.log)
                              |b $ %{} :Leaf (:at 1714498464605) (:by |rJG4IHzWf) (:text "|\"loaded wasm")
                              |h $ %{} :Leaf (:at 1714498534395) (:by |rJG4IHzWf) (:text |w)
              |yR $ %{} :Expr (:at 1714498197231) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714498202474) (:by |rJG4IHzWf) (:text |register-log!)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1695659910770) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |n $ %{} :Expr (:at 1646150052705) (:by |rJG4IHzWf)
                :data $ {}
              |r $ %{} :Expr (:at 1646150152124) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695833186592) (:by |rJG4IHzWf) (:text |println)
                  |b $ %{} :Leaf (:at 1695833194980) (:by |rJG4IHzWf) (:text "|\"Saved at")
                  |e $ %{} :Expr (:at 1695833205162) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1695833211484) (:by |rJG4IHzWf) (:text |.!toISOString)
                      |T $ %{} :Expr (:at 1695833196620) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695833204629) (:by |rJG4IHzWf) (:text |new)
                          |T $ %{} :Leaf (:at 1695833201386) (:by |rJG4IHzWf) (:text |js/Date)
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |register-log! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1714498203352) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1714498203352) (:by |rJG4IHzWf) (:text |defn)
              |b $ %{} :Leaf (:at 1714498203352) (:by |rJG4IHzWf) (:text |register-log!)
              |h $ %{} :Expr (:at 1714498203352) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1714498205055) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714498208403) (:by |rJG4IHzWf) (:text |js-set)
                  |b $ %{} :Leaf (:at 1714498210734) (:by |rJG4IHzWf) (:text |js/window)
                  |h $ %{} :Leaf (:at 1714498211976) (:by |rJG4IHzWf) (:text "|\"_calcit_log")
                  |l $ %{} :Expr (:at 1714498216257) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714498216565) (:by |rJG4IHzWf) (:text |fn)
                      |b $ %{} :Expr (:at 1714498216937) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498217702) (:by |rJG4IHzWf) (:text |content)
                      |h $ %{} :Expr (:at 1714498279888) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1714498280546) (:by |rJG4IHzWf) (:text |let)
                          |L $ %{} :Expr (:at 1714498280800) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1714498280944) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714498285236) (:by |rJG4IHzWf) (:text |result-el)
                                  |b $ %{} :Expr (:at 1714498288182) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714498288182) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                                      |b $ %{} :Leaf (:at 1714498288182) (:by |rJG4IHzWf) (:text "|\"#result")
                          |T $ %{} :Expr (:at 1714498218959) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1714498234277) (:by |rJG4IHzWf) (:text |->)
                              |L $ %{} :Leaf (:at 1714498291725) (:by |rJG4IHzWf) (:text |result-el)
                              |P $ %{} :Leaf (:at 1714498302015) (:by |rJG4IHzWf) (:text |.-innerText)
                              |T $ %{} :Expr (:at 1714498249036) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714498272455) (:by |rJG4IHzWf) (:text |set!)
                                  |b $ %{} :Expr (:at 1714498308411) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1714498309126) (:by |rJG4IHzWf) (:text |str)
                                      |T $ %{} :Expr (:at 1714498305767) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714498305628) (:by |rJG4IHzWf) (:text |.-innerText)
                                          |b $ %{} :Leaf (:at 1714498307733) (:by |rJG4IHzWf) (:text |result-el)
                                      |b $ %{} :Leaf (:at 1714498320702) (:by |rJG4IHzWf) (:text |&newline)
                                      |h $ %{} :Leaf (:at 1714498322639) (:by |rJG4IHzWf) (:text |content)
              |o $ %{} :Expr (:at 1714498205055) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1714498208403) (:by |rJG4IHzWf) (:text |js-set)
                  |b $ %{} :Leaf (:at 1714498210734) (:by |rJG4IHzWf) (:text |js/window)
                  |h $ %{} :Leaf (:at 1714498341026) (:by |rJG4IHzWf) (:text "|\"_calcit_error")
                  |l $ %{} :Expr (:at 1714498216257) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1714498216565) (:by |rJG4IHzWf) (:text |fn)
                      |b $ %{} :Expr (:at 1714498216937) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1714498217702) (:by |rJG4IHzWf) (:text |content)
                      |h $ %{} :Expr (:at 1714498279888) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1714498280546) (:by |rJG4IHzWf) (:text |let)
                          |L $ %{} :Expr (:at 1714498280800) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Expr (:at 1714498280944) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714498285236) (:by |rJG4IHzWf) (:text |result-el)
                                  |b $ %{} :Expr (:at 1714498288182) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1714498288182) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                                      |b $ %{} :Leaf (:at 1714498288182) (:by |rJG4IHzWf) (:text "|\"#result")
                          |T $ %{} :Expr (:at 1714498218959) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1714498234277) (:by |rJG4IHzWf) (:text |->)
                              |L $ %{} :Leaf (:at 1714498291725) (:by |rJG4IHzWf) (:text |result-el)
                              |P $ %{} :Leaf (:at 1714498302015) (:by |rJG4IHzWf) (:text |.-innerText)
                              |T $ %{} :Expr (:at 1714498249036) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1714498272455) (:by |rJG4IHzWf) (:text |set!)
                                  |b $ %{} :Expr (:at 1714498308411) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1714498309126) (:by |rJG4IHzWf) (:text |str)
                                      |T $ %{} :Expr (:at 1714498305767) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1714498305628) (:by |rJG4IHzWf) (:text |.-innerText)
                                          |b $ %{} :Leaf (:at 1714498307733) (:by |rJG4IHzWf) (:text |result-el)
                                      |b $ %{} :Leaf (:at 1714498320702) (:by |rJG4IHzWf) (:text |&newline)
                                      |h $ %{} :Leaf (:at 1714498322639) (:by |rJG4IHzWf) (:text |content)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1626201152815) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1626201163076) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1626201191606) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1626201192115) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1626201192626) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at 1626201164538) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201161775) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1614750747553) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1507461699387) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461702453) (:by |root) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1507461704162) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461706990) (:by |root) (:text |reset!)
                          |j $ %{} :Leaf (:at 1507461708965) (:by |root) (:text |*reel)
                          |r $ %{} :Expr (:at 1507461710020) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461730190) (:by |root) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1507461719097) (:by |root) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1507461721870) (:by |root) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1507461722724) (:by |root) (:text |updater)
                      |y $ %{} :Expr (:at 1626777542168) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1679237703306) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |j $ %{} :Expr (:at 1626201203433) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!)
                      |b $ %{} :Leaf (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error")
                      |j $ %{} :Leaf (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1626201173819) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors)
                |yyj $ %{} :Expr (:at 1626290808117) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!)
                |z $ %{} :Expr (:at 1714498397976) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1714498397163) (:by |rJG4IHzWf) (:text "|\"../pkg/calcit_wasm_play")
                    |b $ %{} :Leaf (:at 1714498413816) (:by |rJG4IHzWf) (:text |:default)
                    |h $ %{} :Leaf (:at 1714498414304) (:by |rJG4IHzWf) (:text |init)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688397777636) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397783265) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1688397785768) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1688397786090) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1688397788043) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1688397788324) (:by |rJG4IHzWf) (:text |s)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397789504) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1688397790936) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                  |u $ %{} :Expr (:at 1688397780767) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688397781225) (:by |rJG4IHzWf) (:text |_)
                      |T $ %{} :Expr (:at 1688397780408) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1688397780408) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695659902074) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text "|\"unknown op:")
                              |h $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
