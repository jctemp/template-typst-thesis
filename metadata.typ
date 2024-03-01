#let details = (
  title: "Titel der Arbeit",
  date: "29. Feburar 2024",
  language: "de",
  degree: "Bachelor",
  field: "Angewandte Informatik",
  fontSize: 12pt,
  doubleSided: true,
  author: (
    name: "Max Mustermann",
    role: "Autor",
    details: (
      "Matrikelnummer", 
      "Email Adresse"
    ),
  ),
  examiners: (
  (
    role: "Erstprüfer",
    details: (
       "Prof. Dr. Vorname Name",
       "Abteilung Informatik, Fakultät IV",
       "Hochschule Hannover",
       "Email Adresse",
    ),
  ),
  (
    role: "Zweitprüfer",
    details: (
       "Prof. Dr. Vorname Name",
       "Abteilung Informatik, Fakultät IV",
       "Hochschule Hannover",
       "Email Adresse",
    ),
  ),
  ),
)