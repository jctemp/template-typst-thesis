#let cover(details) = {
  set page(numbering: none)

  image("../figures/wordmark_black.png", width: 20%)

  place(horizon, dy: -20mm,[
    #set text(size: details.fontSize * 2, weight: "bold")
    #details.title
    
    #set text(size: 1.25 * details.fontSize, weight: "regular")

    #details.author.name

    #if details.language == "de" {
      [#details.degree\arbeit im Studiengang #details.field]
    } else {
      [#details.degree's thesis in #details.field]
    }
    
    #linebreak()
    #details.date
  ])

  place(bottom + right, dy: 20mm, image("../figures/logo_colour.png", width: 45mm))
}