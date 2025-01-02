#let miniature(
  titre: none,
  sous_titre: none,
  figure: none,
  couleur: none,
  police: none,
  taille_titre: none,
  taille_sous_titre: none,
  espace_horizontal: none,
  doc
) = {
  set page(
  width: 640pt,
  height: 360pt,
  fill: rgb("222222"),
  margin: 0pt
  )

  set text(
    font: police,
    weight: "extrabold",
    fill: white,
    size: taille_sous_titre
  )

  let le_titre(term) = text(fill: rgb(couleur), size: taille_titre)[#term]

  box(
    width: 640pt,
    height: 360pt,
    stroke: 5pt + rgb(couleur),

    grid(
    columns: (1fr, 1fr),
    inset: 3pt,
    align: (horizon + center, horizon),
    rect(
      width: 315pt,
      height: 354pt,
      stroke: 0pt,
      image(figure)
    ),
    rect(
      width: 315pt,
      height: 354pt,
      stroke: 0pt,
    )[#le_titre(titre) #v(espace_horizontal, weak: true) #sous_titre]
  ))
}


