#!/bin/bash
# Genera l'EPUB dagli appunti con Pandoc + filtro Lua

set -e

OUTPUT="appunti-esame-di-stato-ingegneria-informazione.epub"

echo "📖 Generazione EPUB in corso..."

pandoc -f latex -t epub3 main.tex \
  --resource-path=".:capitoli:immagini:stili" \
  --toc --number-sections \
  --metadata=title:"Appunti per l'Esame di Stato – Ingegnere Junior (Settore Informazione)" \
  --metadata=author:"Paolo Pietrelli" \
  --epub-cover-image=stili/cover.png \
  --css=stili/epub.css \
  --lua-filter=filters/lstlisting2fenced.lua \
  --lua-filter=filters/epub_parti.lua \
  --highlight-style=kate \
  --mathjax \
  -o "$OUTPUT"

echo "✅ EPUB generato: $OUTPUT"
