#let disclaimer(details) = {

  set page(numbering: "I")
  counter(page).update(1) 

  let all = (
    (
      text(weight: "bold", details.author.role), 
      (details.author.name, ..details.author.details).join("\n")
    ),
    ..details.examiners.map(examiner => 
      (
        text(weight: "bold", examiner.role),
        examiner.details.join("\n")
      )
    )
  )

  align(top, grid(
    columns: (30mm, 1fr),
    gutter: 2 * details.fontSize,
    ..all.flatten()
  ))

  align(horizon,[
    #set par(justify: true)

    #if details.language == "de" {[
      Soweit nicht anders gekennzeichnet, ist dieses Werk unter einem
      Creative-Commons-Lizenzvertrag Namensnennung 4.0 lizenziert.
      Dies gilt nicht für Zitate und Werke, die aufgrund einer anderen Erlaubnis
      genutzt werden.
      Um die Bedingungen der Lizenz einzusehen, folgen Sie bitte dem Hyperlink:
    ]} else {[
      This content is subject to the terms of a Creative Commons Attribution 4.0 
      License Agreement, unless stated otherwise. Please note that this license 
      does not apply to quotations or works that are used based on another
      license. To view the terms of the license, please click on the hyperlink
      provided.
    ]}

    _#link("https://creativecommons.org/licenses/by/4.0/deed.de")_
  ])

  align(bottom,[
    #set par(justify: true)  
    #if details.language == "de" {[
      Hiermit erkläre ich, dass ich die eingereichte Arbeit selbstständig und 
      ohne fremde Hilfe verfasst, andere als die von mir angegebenen Quellen
      und Hilfsmittel nicht benutzt und die den benutzten Werken wörtlich oder
      inhaltlich entnommenen Stellen als solche kenntlich gemacht habe.
    ]} else {[
      I hereby declare that I have written and submitted this thesis 
      independently, without any external help or use of sources and aids other 
      than those specifically mentioned by me. I also declare that I have not
      taken any content from the works used without proper citation and
      acknowledgement.
    ]}

    #v(15mm)
    #grid(
        columns: 2,
        gutter: 1fr,
        "Hannover, " + details.date, details.author.name
    ) 
  ])
}