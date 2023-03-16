local vim = vim
local M = {}

M.palette = {
  name = "mechanicus",
  base0 = "#1a1a17",
  base1 = "#302F27",
  base2 = "#21201a",
  base3 = "#3C3A2E",
  base4 = "#424033",
  base5 = "#54534d",
  base6 = "#9ca0a4",
  base7 = "#b1b1b1",
  base8 = "#e3e3e1",
  border = "#a1b5b1",
  brown = "#88481c",
  white = "#e6c68a",
  grey = "#8F908A",
  black = "#000000",
  pink = "#f94662",
  green = "#88c288",
  darkGreen = "#529d51",
  aqua = "#7abcf5",
  yellow = "#e6f074",
  orange = "#d57635",
  purple = "#a870b1",
  red = "#fb6767",
  diff_add = "#77a66c",
  diff_remove = "#fb6767",
  diff_change = "#27406b",
  diff_text = "#23324d",
}

M.highlight_group = function(palette)
  return {

    -- Base --
    Normal = { fg = palette.white, bg = palette.base2 },
    NormalFloat = { bg = palette.base1 },
    NonText = { fg = palette.base5 },
    Visual = { bg = palette.base4 },
    VisualNOS = { bg = palette.base3 },
    Search = { fg = palette.base2, bg = palette.yellow },
    IncSearch = { fg = palette.base2, bg = palette.orange },
    MatchParen = { fg = palette.pink },
    Question = { fg = palette.yellow },
    ModeMsg = { fg = palette.white, style = "bold" },
    MoreMsg = { fg = palette.white, style = "bold" },
    ErrorMsg = { fg = palette.red, style = "bold" },
    WarningMsg = { fg = palette.yellow, style = "bold" },
    VertSplit = { fg = palette.brown },
    LineNr = { fg = palette.base5, bg = palette.base0 },
    Cursor = { style = "reverse" },
    CursorLine = { bg = palette.base2 },
    CursorLineNr = { fg = palette.base7, bg = palette.base1 },
    SignColumn = { fg = palette.yellow, bg = palette.base2 },
    SpellBad = { fg = palette.red, style = "undercurl" },
    SpellCap = { fg = palette.purple, style = "undercurl" },
    SpellRare = { fg = palette.aqua, style = "undercurl" },
    SpellLocal = { fg = palette.pink, style = "undercurl" },
    SpecialKey = { fg = palette.pink },
    Special = { fg = palette.yellow },
    Title = { fg = palette.yellow, style = "bold" },
    Identifier = { fg = palette.aqua, style = "bold" },

    -- Git colors --
    DiffAdd = { bg = palette.diff_add },
    DiffDelete = { bg = palette.diff_remove },
    DiffChange = { bg = palette.diff_change },
    DiffText = { bg = palette.diff_text },
    diffAdded = { fg = palette.green },
    diffRemoved = { fg = palette.red },

    Folded = { fg = palette.grey, bg = palette.base3 },
    FoldColumn = { fg = palette.white, bg = palette.black },

    -- Popups --
    Pmenu = { fg = palette.white, bg = palette.base3 },
    PmenuSel = { fg = palette.base4, bg = palette.white },
    PmenuSelBold = { fg = palette.base4, bg = palette.orange },
    PmenuThumb = { fg = palette.purple, bg = palette.green },
    PmenuSbar = { bg = palette.base3 },
    String = { fg = palette.green, style = "italic" },

    dbui_tables = { fg = palette.white },

    -- Diagnostics --
    DiagnosticSignError = {fg = palette.red },
    DiagnosticSignWarn = { fg = palette.yellow },
    DiagnosticSignInfo = { fg = palette.white },
    DiagnosticSignHint = { fg = palette.aqua },
    DiagnosticVirtualTextError = { fg = palette.red },
    DiagnosticVirtualTextWarn = { fg = palette.yellow },
    DiagnosticVirtualTextInfo = { fg = palette.white },
    DiagnosticVirtualTextHint = { fg = palette.aqua },
    DiagnosticUnderlineError = { style = "undercurl", sp = palette.red },
    DiagnosticUnderlineWarn = { style = "undercurl", sp = palette.yellow },
    DiagnosticUnderlineInfo = { style = "undercurl", sp = palette.white },
    DiagnosticUnderlineHint = { style = "undercurl", sp = palette.aqua },

    -- hrsh7th/nvim-cmp
    CmpDocumentation = { fg = palette.white, bg = palette.base1 },
    CmpDocumentationBorder = { fg = palette.white, bg = palette.base1 },
    CmpItemAbbr = { fg = palette.white },
    CmpItemAbbrMatch = { fg = palette.aqua },
    CmpItemAbbrMatchFuzzy = { fg = palette.aqua },
    CmpItemKindDefault = { fg = palette.white },
    CmpItemMenu = { fg = palette.base6 },
    CmpItemKindKeyword = { fg = palette.pink },
    CmpItemKindVariable = { fg = palette.pink },
    CmpItemKindConstant = { fg = palette.pink },
    CmpItemKindReference = { fg = palette.pink },
    CmpItemKindValue = { fg = palette.pink },
    CmpItemKindFunction = { fg = palette.aqua },
    CmpItemKindMethod = { fg = palette.aqua },
    CmpItemKindConstructor = { fg = palette.aqua },
    CmpItemKindClass = { fg = palette.orange },
    CmpItemKindInterface = { fg = palette.orange },
    CmpItemKindStruct = { fg = palette.orange },
    CmpItemKindEvent = { fg = palette.orange },
    CmpItemKindEnum = { fg = palette.orange },
    CmpItemKindUnit = { fg = palette.orange },
    CmpItemKindModule = { fg = palette.yellow },
    CmpItemKindProperty = { fg = palette.green },
    CmpItemKindField = { fg = palette.green },
    CmpItemKindTypeParameter = { fg = palette.green },
    CmpItemKindEnumMember = { fg = palette.green },
    CmpItemKindOperator = { fg = palette.green },

    -- WhichKey
    WhichKey = {fg = palette.green, style = "bold"},
    WhichKeyFloat = {fg = palette.white, bg = palette.base2},
    WhichKeyGroup = {fg = palette.orange, style = "italic"},
    WhichKeySeparator = {fg = palette.yellow, style = "bold"},
    WhichKeyDesc = {fg = palette.aqua, style = "italic"},

    -- Telescope --
    TelescopeBorder = { fg = palette.green },
    TelescopePreviewRead = { fg = palette.darkGreen},
    TelescopePreviewWrite = { fg = palette.aqua },
    TelescopePreviewExecute = { fg = palette.white, style = "bold" },
    TelescopePreviewDirectory = { fg = palette.base7, style = "italic" },
    TelescopePreviewSize = { fg = palette.purple, style = "italic" },
    TelescopePreviewUser = { fg = palette.darkGreen, style = "italic" },
    TelescopePreviewGroup = { fg = palette.green, style = "italic" },
    TelescopePreviewDate = { fg = palette.base6, style = "italic" },
    TelescopePreviewTitle = { fg = palette.yellow, style = "bold" },
    TelescopePrompt = { fg = palette.aqua },
    TelescopePromptBorder = { fg = palette.orange },
    TelescopePromptTitle = { fg = palette.yellow, style = "bold" },
    TelescopeResultsTitle = { fg = palette.yellow, style = "bold" },
    TelescopeResultsBorder = { fg = palette.aqua },

    -- Treesitter --
    ["@variable"] = { fg = palette.orange },
    ["@variable.builtin"] = { fg = palette.orange },
    ["@boolean"] = { fg = palette.purple, style = "bold" },
    ["@string"] = { fg = palette.darkGreen, style = "italic" },
    ["@string.escape"] = { fg = palette.purple },
    ["@character"] = { fg = palette.darkGreen, style = "italic" },
    ["@number"] = { fg = palette.purple },
    ["@float"] = { fg = palette.purple },
    ["@property"] = { fg = palette.orange },
    ["@constant"] = { fg = palette.aqua, style = "bold" },
    ["@constant.builtin"] = { fg = palette.purple, style = "bold" },
    ["@constructor"] = { fg = palette.yellow, style = "bold" },
    ["@conditional"] = { fg = palette.aqua, style = "italic" },
    ["@comment"] = { fg = palette.base6, style = "italic" },
    --
    ["@keyword"] = { fg = palette.aqua, style = "italic" },
    ["@keyword.function"] = { fg = palette.yellow, style = "italic" },
    ["@keyword.operator"] = { fg = palette.yellow, style = "bold" },
    --
    ["@include"] = { fg = palette.aqua, style = "italic" },
    ["@namespace"] = { fg = palette.base8, style = "italic" },
    ["@exception"] = { fg = palette.aqua, style = "italic" },
    ["@storageclass"] = { fg = palette.yellow, style = "italic" },
    --
    ["@function"] = { fg = palette.green, style = "bold" },
    ["@function.builtin"] = { fg = palette.green },
    ["@function.macro"] = { fg = palette.green, style = "italic" },
    ["@method"] = { fg = palette.green, style = "bold" },
    ["@operator"] = { fg = palette.yellow, style = "bold" },
    ["@conditional.ternary"] = { fg = palette.yellow, style = "italic" },
    ["@parameter"] = {  fg = palette.purple },
    ["@reference"] = {  fg = palette.purple },
    --
    ["@punctuation.delimiter"] = { fg = palette.yellow, style = "bold" },
    ["@punctuation.bracket"] = { fg = palette.brown, style = "bold" },
    ["@punctuation.special"] = { fg = palette.brown },
    ["@repeat"] = { fg = palette.aqua, style = "italic" },
    --
    ["@tag"] = { fg = palette.yellow, style = "bold" },
    ["@tag.delimiter"] = { fg = palette.brown },
    ["@tag.attribute"] = { fg = palette.orange },
    ["@label"] = { fg = palette.pink, style = "italic" },
    ["@type"] = { fg = palette.yellow, style = "bold" },
    ["@type.qualifier"] = { fg = palette.aqua, style = "italic" },
    ["@type.definition"] = { fg = palette.green, style = "bold" },
    ["@field"] = { fg = palette.white, style = "italic" },
  }
end

M.setup = function()
  local theme = M.highlight_group(M.palette)

  vim.cmd.hi("clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd.syntax("reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = M.palette.name

  for group, color in pairs(theme) do
    local style = color.style and "gui=" .. color.style or "gui=NONE"
    local fg = color.fg and "guifg = " .. color.fg or "guifg = NONE"
    local bg = color.bg and "guibg = " .. color.bg or "guibg = NONE"
    local sp = color.sp and "guisp = " .. color.sp or "guisp = NONE"
    vim.cmd.highlight(group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
  end
end

return M
