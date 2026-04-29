# Pedro Rojas Campuzano · CV

Sitio público con mi CV en español e inglés.

**Live:** https://pedrorojascampuzano-blip.github.io/cv/

## Estructura

- `index.html` — landing con selector ES/EN y descargas PDF
- `es.html` / `en.html` — versiones HTML imprimibles del CV
- `Pedro_Rojas_CV_ES.pdf` / `Pedro_Rojas_CV_EN.pdf` — PDFs descargables

## Actualizar

1. Editar `es.html` / `en.html` localmente
2. Reimprimir PDFs:
   ```bash
   "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
     --headless --disable-gpu --no-pdf-header-footer \
     --print-to-pdf=Pedro_Rojas_CV_ES.pdf \
     "file://$PWD/es.html"
   ```
3. `git add -A && git commit -m "update cv" && git push`

GitHub Pages se actualiza solo en ~30s.
