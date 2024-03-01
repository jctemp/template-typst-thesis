#let project(details, body) = {

  import "../modules/cover.typ": cover
  import "../modules/disclaimer.typ": disclaimer
  import "../modules/acknowledgement.typ": acknowledgement
  import "../modules/abstract_de.typ": abstract_de
  import "../modules/abstract_en.typ": abstract_en

  // ==========================================================================
  // SETTINGS

  set document(
    title: details.title,
    author: details.author.name,
  )

  set page(
    paper: "a4",
    margin: 
      if details.doubleSided 
        {(y: 35mm, inside: 35mm, outside: 18mm)}
      else 
        {(x: 25mm, y: 35mm)},
    header-ascent: 10mm,
    footer-descent: 10mm,
  ) 

  set text(
    // font: "Linux Libertine", 
    font: "CMU Serif", 
    size: details.fontSize, 
    lang: details.language
  )

  show math.equation: set text(weight: 400)
  set math.equation(numbering: "(1)")

  show heading: set block(below: 1.2em, above: 1.75em)
  show heading.where(level:1): set text(size: 2 * details.fontSize)
  show heading.where(level:2): set text(size: 1.5 * details.fontSize)
  show heading.where(level:3): set text(size: 1.25 * details.fontSize)
  set heading(numbering: "1.1")

  set par(leading: 0.65em, justify: true)

  set cite(style: "alphanumeric")

  // ============================================================================

  cover(details)

  set page(numbering: "I", number-align: left)
  counter(page).update(1) 

  disclaimer(details)

  acknowledgement()

  abstract_en()

  abstract_de()

  // ============================================================================
  // TOC

  set par(leading: 1em)

  outline(
    depth: 3,
    indent: 2em
  )

  // ============================================================================
  // TEXT SETTINGS

  set par(leading: 0.65em, justify: true)

  show heading.where(level:1): chapter => [
    #pagebreak()
    #v(35mm)
    #set text(size: 2 * details.fontSize)
    #chapter
  ]

  set page(
    header: locate(loc => {
      let query_before = query(heading.where(level: 1).before(loc), loc)
      let query_after = query(heading.where(level: 1).after(loc), loc)

      if (query_after.len() != 0 and 
          query_after.first().location().page() == loc.page()) {
        return
      }

      if (query_before.last() != 0 and 
          query_before.last().outlined) {[
        #align(center, query_before.last().body)
        #line(length: 100%, stroke: .5pt + black)
      ]}
    }),
    footer: locate(loc => {
      let query = query(heading.where(level: 1).before(loc), loc)

      if query.len() == 0 {
        return
      }

      // last because it orders heading in occuring form begin to loc
      let res = query.last()

      if res.location().page() == loc.page() {
        align(center, counter(page).display("1"))
      } else {[
        #line(length: 100%, stroke: .5pt + black)
        #align(center, counter(page).display("1"))
      ]}
    })
  )

  set page(numbering: "1")
  counter(page).update(1) 

  body

  // List of figures.
  outline(
    title: 
      if details.language == "de" 
        {[Abbildungsverzeichnis]} 
      else 
        {[List of Figures]},
    target: figure.where(kind: image),
  )

  // List of tables.
  outline(
    title: 
      if details.language == "de" 
        {[Tabellenverzeichnis]} 
      else 
        {[List of Tables]},
    target: figure.where(kind: table),
  )

  // Appendix.
  set heading(numbering: "A")
  counter(heading).update(0)
  include("../modules/appendix.typ")
  bibliography("../references.bib")
}