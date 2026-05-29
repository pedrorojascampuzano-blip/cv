# Pedro Rojas Campuzano · CV

Sitio personal público: landing con posicionamiento + Selected Work, y el CV completo en español, inglés y chino.

**Live:** https://pedrorojascampuzano-blip.github.io/cv/

## Estructura

- `index.html` — landing: hero, sección **Selected Work**, selector de CV (EN/ES/中文) y descargas PDF
- `en.html` / `es.html` / `zh.html` — versiones HTML imprimibles del CV
- `Pedro_Rojas_CV_EN.pdf` / `_ES.pdf` / `_ZH.pdf` — PDFs descargables (generados desde los HTML)

## Actualizar

1. Editar el contenido en `index.html` (Selected Work) y/o `en.html` · `es.html` · `zh.html`
2. Regenerar los tres PDFs de un solo comando:
   ```bash
   ./build.sh
   ```
3. Publicar:
   ```bash
   git add -A && git commit -m "update cv" && git push
   ```

GitHub Pages se actualiza solo en ~30s.

> Nota: `index.html` es la landing, no se imprime a PDF. `build.sh` solo regenera los tres CV (`en/es/zh`).
