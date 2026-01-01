#let resume(name: "", location: "", phone: "", email: "", github: "", body) = {
  set document(author: name, title: name)
  set page(margin: (x: 1.5cm, y: 1.5cm))
  
  // Setup Persian Font (Vazirmatn)
  set text(font: ("Vazir-Medium", "DejaVu Sans"), size: 10pt, lang: "fa")
  set text(dir: rtl)

  align(center)[
    #block(text(size: 22pt, weight: "bold")[#name])
    text(size: 9pt)[#location]
    #stack(dir: ltr, spacing: 10pt,
      text(size: 9pt)[#email], [•], 
      text(size: 9pt, dir: ltr)[#phone], [•], 
      text(size: 9pt)[#github]
    )
  ]
  line(length: 100%, stroke: 0.5pt + gray)
  body
}

#let section(title) = {
  v(8pt)
  text(size: 12pt, weight: "bold", fill: navy)[#title]
  line(length: 100%, stroke: 0.5pt + silver)
  v(2pt)
}

#let entry(title, org, dates, desc) = {
  v(6pt)
  text(size: 11pt, weight: "bold")[#title]
  v(2pt)
  text(size: 9pt, fill: gray)[#org, " • ", #dates]
  v(4pt)
  text(size: 10pt)[#desc]
  v(6pt)
}