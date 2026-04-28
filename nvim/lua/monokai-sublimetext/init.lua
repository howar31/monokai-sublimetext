local M = {}

function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "monokai-sublimetext"

  local c = require("monokai-sublimetext.palette").colors
  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Editor
  hi("Normal",       { fg = c.fg, bg = c.bg })
  hi("NormalFloat",  { fg = c.fg, bg = c.black })
  hi("FloatBorder",  { fg = c.grey, bg = c.black })
  hi("Cursor",       { fg = c.bg, bg = c.cursor })
  hi("CursorLine",   { bg = c.line_hl })
  hi("CursorColumn", { bg = c.line_hl })
  hi("ColorColumn",  { bg = c.line_hl })
  hi("LineNr",       { fg = c.gutter })
  hi("CursorLineNr", { fg = c.fg, bold = true })
  hi("SignColumn",   { bg = c.bg })
  hi("VertSplit",    { fg = c.guide })
  hi("WinSeparator", { fg = c.guide })
  hi("Visual",       { bg = c.selection })
  hi("VisualNOS",    { bg = c.selection })
  hi("Search",       { fg = c.bg, bg = c.yellow })
  hi("IncSearch",    { fg = c.bg, bg = c.orange })
  hi("CurSearch",    { fg = c.bg, bg = c.orange })
  hi("Substitute",   { fg = c.bg, bg = c.orange })
  hi("MatchParen",   { fg = c.fg, bg = c.grey, bold = true })
  hi("Folded",       { fg = c.comment, bg = c.line_hl })
  hi("FoldColumn",   { fg = c.comment })
  hi("NonText",      { fg = c.guide })
  hi("SpecialKey",   { fg = c.guide })
  hi("Whitespace",   { fg = c.guide })
  hi("EndOfBuffer",  { fg = c.bg })

  -- Popup menu
  hi("Pmenu",        { fg = c.fg, bg = c.black })
  hi("PmenuSel",     { fg = c.fg, bg = c.selection })
  hi("PmenuSbar",    { bg = c.line_hl })
  hi("PmenuThumb",   { bg = c.grey })

  -- Status line / tab line
  hi("StatusLine",   { fg = c.fg, bg = c.line_hl })
  hi("StatusLineNC", { fg = c.comment, bg = c.black })
  hi("TabLine",      { fg = c.comment, bg = c.black })
  hi("TabLineFill",  { bg = c.black })
  hi("TabLineSel",   { fg = c.fg, bg = c.bg })
  hi("WinBar",       { fg = c.fg, bold = true })
  hi("WinBarNC",     { fg = c.comment })

  -- Messages
  hi("Title",        { fg = c.yellow, bold = true })
  hi("ModeMsg",      { fg = c.green, bold = true })
  hi("MoreMsg",      { fg = c.green })
  hi("Question",     { fg = c.cyan })
  hi("WarningMsg",   { fg = c.orange })
  hi("ErrorMsg",     { fg = c.error, bold = true })
  hi("Directory",    { fg = c.cyan })
  hi("Conceal",      { fg = c.comment })

  -- Syntax
  hi("Comment",      { fg = c.comment, italic = true })
  hi("Constant",     { fg = c.purple })
  hi("String",       { fg = c.yellow })
  hi("Character",    { fg = c.yellow })
  hi("Number",       { fg = c.purple })
  hi("Boolean",      { fg = c.purple })
  hi("Float",        { fg = c.purple })
  hi("Identifier",   { fg = c.fg })
  hi("Function",     { fg = c.green })
  hi("Statement",    { fg = c.pink })
  hi("Conditional",  { fg = c.pink })
  hi("Repeat",       { fg = c.pink })
  hi("Label",        { fg = c.pink })
  hi("Operator",     { fg = c.pink })
  hi("Keyword",      { fg = c.pink })
  hi("Exception",    { fg = c.pink })
  hi("PreProc",      { fg = c.pink })
  hi("Include",      { fg = c.pink })
  hi("Define",       { fg = c.pink })
  hi("Macro",        { fg = c.cyan })
  hi("PreCondit",    { fg = c.pink })
  hi("Type",         { fg = c.cyan, italic = true })
  hi("StorageClass", { fg = c.cyan, italic = true })
  hi("Structure",    { fg = c.cyan })
  hi("Typedef",      { fg = c.cyan })
  hi("Special",      { fg = c.purple })
  hi("SpecialChar",  { fg = c.orange })
  hi("Tag",          { fg = c.pink })
  hi("Delimiter",    { fg = c.fg })
  hi("SpecialComment", { fg = c.comment, bold = true })
  hi("Debug",        { fg = c.orange })
  hi("Underlined",   { underline = true })
  hi("Error",        { fg = c.error })
  hi("Todo",         { fg = c.orange, bold = true })
  hi("Added",        { fg = c.diff_add })
  hi("Changed",      { fg = c.diff_change })
  hi("Removed",      { fg = c.diff_del })

  -- Diff
  hi("DiffAdd",      { bg = "#2d3c2d" })
  hi("DiffChange",   { bg = "#3c3c2d" })
  hi("DiffDelete",   { fg = c.diff_del, bg = "#3c2d2d" })
  hi("DiffText",     { bg = "#4c4c3d", bold = true })

  -- Diagnostic
  hi("DiagnosticError",          { fg = c.error })
  hi("DiagnosticWarn",           { fg = c.warn })
  hi("DiagnosticInfo",           { fg = c.info })
  hi("DiagnosticHint",           { fg = c.hint })
  hi("DiagnosticUnderlineError", { sp = c.error, undercurl = true })
  hi("DiagnosticUnderlineWarn",  { sp = c.warn, undercurl = true })
  hi("DiagnosticUnderlineInfo",  { sp = c.info, undercurl = true })
  hi("DiagnosticUnderlineHint",  { sp = c.hint, undercurl = true })

  -- Treesitter
  hi("@comment",               { link = "Comment" })
  hi("@string",                { link = "String" })
  hi("@string.escape",         { fg = c.purple })
  hi("@string.regex",          { fg = c.orange })
  hi("@character",             { link = "Character" })
  hi("@number",                { link = "Number" })
  hi("@boolean",               { link = "Boolean" })
  hi("@float",                 { link = "Float" })
  hi("@function",              { fg = c.green })
  hi("@function.call",         { fg = c.green })
  hi("@function.builtin",      { fg = c.cyan })
  hi("@function.macro",        { fg = c.green })
  hi("@method",                { fg = c.green })
  hi("@method.call",           { fg = c.green })
  hi("@constructor",           { fg = c.green })
  hi("@parameter",             { fg = c.orange, italic = true })
  hi("@keyword",               { fg = c.pink })
  hi("@keyword.function",      { fg = c.cyan, italic = true })
  hi("@keyword.operator",      { fg = c.pink })
  hi("@keyword.return",        { fg = c.pink })
  hi("@conditional",           { fg = c.pink })
  hi("@repeat",                { fg = c.pink })
  hi("@label",                 { fg = c.pink })
  hi("@operator",              { fg = c.pink })
  hi("@exception",             { fg = c.pink })
  hi("@variable",              { fg = c.fg })
  hi("@variable.builtin",      { fg = c.orange, italic = true })
  hi("@type",                  { fg = c.cyan, italic = true })
  hi("@type.builtin",          { fg = c.cyan, italic = true })
  hi("@type.qualifier",        { fg = c.pink })
  hi("@type.definition",       { fg = c.cyan })
  hi("@namespace",             { fg = c.green, italic = true })
  hi("@include",               { fg = c.pink })
  hi("@property",              { fg = c.fg })
  hi("@field",                 { fg = c.fg })
  hi("@constant",              { fg = c.purple })
  hi("@constant.builtin",      { fg = c.purple })
  hi("@constant.macro",        { fg = c.purple })
  hi("@punctuation.bracket",   { fg = c.fg })
  hi("@punctuation.delimiter", { fg = c.fg })
  hi("@punctuation.special",   { fg = c.pink })
  hi("@tag",                   { fg = c.pink })
  hi("@tag.attribute",         { fg = c.green })
  hi("@tag.delimiter",         { fg = c.fg })
  hi("@text.title",            { fg = c.yellow, bold = true })
  hi("@text.literal",          { fg = c.yellow })
  hi("@text.uri",              { fg = c.cyan, underline = true })
  hi("@text.emphasis",         { italic = true })
  hi("@text.strong",           { bold = true })

  -- LSP semantic tokens
  hi("@lsp.type.class",         { fg = c.green, italic = true })
  hi("@lsp.type.decorator",     { fg = c.green })
  hi("@lsp.type.enum",          { fg = c.cyan })
  hi("@lsp.type.enumMember",    { fg = c.purple })
  hi("@lsp.type.function",      { fg = c.green })
  hi("@lsp.type.interface",     { fg = c.cyan, italic = true })
  hi("@lsp.type.macro",         { fg = c.cyan })
  hi("@lsp.type.method",        { fg = c.green })
  hi("@lsp.type.namespace",     { fg = c.green, italic = true })
  hi("@lsp.type.parameter",     { fg = c.orange, italic = true })
  hi("@lsp.type.property",      { fg = c.fg })
  hi("@lsp.type.struct",        { fg = c.cyan })
  hi("@lsp.type.type",          { fg = c.cyan, italic = true })
  hi("@lsp.type.variable",      { fg = c.fg })

  -- Git signs
  hi("GitSignsAdd",    { fg = c.diff_add })
  hi("GitSignsChange", { fg = c.diff_change })
  hi("GitSignsDelete", { fg = c.diff_del })

  -- Telescope
  hi("TelescopeNormal",       { fg = c.fg, bg = c.black })
  hi("TelescopeBorder",       { fg = c.grey, bg = c.black })
  hi("TelescopePromptNormal", { fg = c.fg, bg = c.line_hl })
  hi("TelescopePromptBorder", { fg = c.grey, bg = c.line_hl })
  hi("TelescopePromptTitle",  { fg = c.bg, bg = c.cyan })
  hi("TelescopePreviewTitle", { fg = c.bg, bg = c.green })
  hi("TelescopeResultsTitle", { fg = c.bg, bg = c.pink })
  hi("TelescopeSelection",    { bg = c.selection })
  hi("TelescopeMatching",     { fg = c.orange, bold = true })

  -- Terminal ANSI colors
  vim.g.terminal_color_0  = "#333333"
  vim.g.terminal_color_1  = "#C4265E"
  vim.g.terminal_color_2  = "#86B42B"
  vim.g.terminal_color_3  = "#B3B42B"
  vim.g.terminal_color_4  = "#6A7EC8"
  vim.g.terminal_color_5  = "#8C6BC8"
  vim.g.terminal_color_6  = "#56ADBC"
  vim.g.terminal_color_7  = "#e3e3dd"
  vim.g.terminal_color_8  = "#666666"
  vim.g.terminal_color_9  = "#f92672"
  vim.g.terminal_color_10 = "#A6E22E"
  vim.g.terminal_color_11 = "#e2e22e"
  vim.g.terminal_color_12 = "#819aff"
  vim.g.terminal_color_13 = "#AE81FF"
  vim.g.terminal_color_14 = "#66D9EF"
  vim.g.terminal_color_15 = "#f8f8f2"
end

return M
