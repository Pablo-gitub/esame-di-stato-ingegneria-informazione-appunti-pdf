-- filters/lstlisting2fenced.lua
-- Converte lstlisting in CodeBlock con classi Pandoc corrette (sourceCode + lang)

local lang_map = {
  ["c++"] = "cpp",
  ["c#"] = "csharp",
  ["shell"] = "bash",
  ["pseudocode"] = "text",
  ["plain"] = "text",
  ["sql"] = "sql",
}

local function norm_lang(optlang)
  if not optlang then return nil end
  optlang = optlang:lower()
  return lang_map[optlang] or optlang
end

function RawBlock(el)
  if not el.format:match("tex") then return nil end
  local txt = el.text

  -- \begin{lstlisting}[...opzioni...] ... \end{lstlisting}
  local opt, code = txt:match("\\begin%s*{%s*lstlisting%s*}%s*%[(.-)%]%s*(.-)\\end%s*{%s*lstlisting%s*}")
  if not code then
    -- senza opzioni
    code = txt:match("\\begin%s*{%s*lstlisting%s*}%s*(.-)\\end%s*{%s*lstlisting%s*}")
  end
  if not code then return nil end

  local lang
  if opt then lang = opt:match("language%s*=%s*([%a%+%#]+)") end
  lang = norm_lang(lang)

  -- de-indent uniforme
  local min_indent
  for line in code:gmatch("([^\n]*)\n?") do
    if line:match("%S") then
      local indent = #(line:match("^%s*") or "")
      if not min_indent or indent < min_indent then min_indent = indent end
    end
  end
  if min_indent and min_indent > 0 then
    local pat = "^" .. string.rep(" ", min_indent)
    code = code:gsub("\n" .. pat, "\n")
    code = code:gsub("^" .. pat, "")
  end

  -- Attributi nel formato pandoc.Attr(id, classes, keyvals)
  local classes = {"sourceCode"}
  if lang then table.insert(classes, lang) end
  local attr = pandoc.Attr("", classes, {})

  return pandoc.CodeBlock(code, attr)
end
