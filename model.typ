#import "template/miniature.typ": miniature
#show: miniature.with(
  titre: [
    RMARKDOWN document
  ], // markup typst autorisé
  sous_titre: [
    en bref
  ], // markup typst autorisé
  figure: "../rmarkdown.png", // "../" car "/template" est le root
  couleur: "ff0000",
  police: "Arial",
  taille_sous_titre: 4em, // 4 fois la taille du texte
  taille_titre: 1em, // 1 fois la taille du sous-titre
  espace_horizontal: 0pt
)

// Dans le terminal lancer la commande suivante:
// typst compile model.typ nom_du_fichier.png