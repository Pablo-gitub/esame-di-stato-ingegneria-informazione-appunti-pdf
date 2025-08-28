#!/bin/bash
# Rigenera la cover.png a partire dalla prima pagina del PDF

# Uscita se manca main.pdf
if [ ! -f main.pdf ]; then
  echo "❌ Errore: main.pdf non trovato nella root."
  exit 1
fi

# Genera la cover dalla prima pagina
pdftoppm -png -f 1 -singlefile -r 300 main.pdf cover

# Sposta la cover dentro stili/
mv cover.png stili/cover.png

echo "✅ Cover aggiornata in stili/cover.png"
