## Project Overview

This project is designed to generate YouTube thumbnails for the channel "WeData" using Typst, a powerful static document language. The process involves merging a template with provided title and subtitle text along with an image to create visually appealing thumbnails.

To use it, simply clone this repository.

## How It Works

1. **Template**: A predefined template named `miniature.typ` in the `/template/` directory is used as a base.
2. **Input Data**:
   - **Title (titre)**: The main title of the YouTube video, which can include Typst markup for styling.
   - **Subtitle (sous_titre)**: A brief description or subtitle that accompanies the title.
   - **Image (figure)**: An image file path relative to the template root directory (`/template`).
3. **Customization**:
   - **Color (couleur)**: The color of the text, specified in hexadecimal format like `ff0000`.
   - **Font Family (police)**: Allows users to specify a font family.
   - **Subtitle Size (taille_sous_titre)**: Custom sizes for the subtitle which is defined relative to text size (ex. 4em = 4 times the size of the text).
   - **Title Size (taille_titre)**: Custom sizes for the title which is defined relative to the subtitle size (ex. 1em = 1 time the size of the text)
   - **Horizontal space (espace_horizontal)**: Custom sizes for the space between the title and the subtitle.

## Usage

To generate a thumbnail using this project:

1. Bring you own image and adapt the figure field in the typst file (e.g. `model.typ`).
2. Set up the parameters as demonstrated in the example below:
   
```typst
#import "template/miniature.typ": miniature

#show: miniature.with(
  titre: [
    RMARKDOWN document
  ], // typst markup allowed
  sous_titre: [
    en bref
  ], // typst markup allowed
  figure: "../rmarkdown.png", // image path relative to template root directory
  couleur: "ff0000",
  police: "Arial",
  taille_sous_titre: 4em, 
  taille_titre: 1em,
  espace_horizontal: 0pt
)
```

3. Compile the Typst file into an image using the command-line:
   
```bash
typst compile model.typ file_name.png
```

This command will generate a thumbnail in PNG format named `file_name.png`.

## Directory Structure

- `/template/miniature.typ`: Contains the Typst template for thumbnails.
- `/model.typ`: Main script file where you set parameters and import templates.

Feel free to modify the settings according to your needs.