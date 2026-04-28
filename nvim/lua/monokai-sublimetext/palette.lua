local M = {}

M.colors = {
  bg         = "#272822",
  fg         = "#f8f8f2",
  cursor     = "#f8f8f0",
  selection  = "#49483e",
  line_hl    = "#3e3d32",
  gutter     = "#75715E",
  guide      = "#3b3a32",

  -- Monokai signature syntax colors
  pink       = "#F92672",
  green      = "#A6E22E",
  yellow     = "#E6DB74",
  orange     = "#FD971F",
  cyan       = "#66D9EF",
  purple     = "#AE81FF",
  comment    = "#75715E",

  -- ANSI normal (muted)
  black      = "#333333",
  red        = "#C4265E",
  green_dim  = "#86B42B",
  yellow_dim = "#B3B42B",
  blue       = "#6A7EC8",
  magenta    = "#8C6BC8",
  cyan_dim   = "#56ADBC",
  white_dim  = "#e3e3dd",

  -- ANSI bright
  grey       = "#666666",
  bright_red = "#f92672",
  bright_blue = "#819aff",

  -- Diff / diagnostic
  diff_add   = "#A6E22E",
  diff_del   = "#F92672",
  diff_change = "#E6DB74",
  error      = "#F92672",
  warn       = "#FD971F",
  info       = "#66D9EF",
  hint       = "#A6E22E",
}

return M
