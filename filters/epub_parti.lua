-- Filtro EPUB per la struttura in parti (\part) del libro.
--
-- Pandoc legge \part come intestazione di livello 1 e \chapter come livello 2.
-- Senza questo filtro l'EPUB verrebbe diviso per parti (due file enormi) e i
-- capitoli sarebbero numerati 1.1, 1.2, ... invece di 1, 2, ... come nel PDF.
--
-- Qui i capitoli tornano al livello 1 (un file per capitolo, numerazione
-- continua) e ogni parte diventa un'intestazione di livello 1 senza numero,
-- con il titolo "Parte I - ...", "Parte II - ...".
-- Il filtro presuppone che tutte le intestazioni di livello 1 siano parti.

local numeri_romani = { "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X" }
local contatore_parti = 0

function Header(h)
  if h.level == 1 then
    contatore_parti = contatore_parti + 1
    h.classes:insert("unnumbered")
    local etichetta = numeri_romani[contatore_parti] or tostring(contatore_parti)
    table.insert(h.content, 1, pandoc.Space())
    table.insert(h.content, 1, pandoc.Str("Parte " .. etichetta .. " \u{2013}"))
    return h
  end
  h.level = h.level - 1
  return h
end
