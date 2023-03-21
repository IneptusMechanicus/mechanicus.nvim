local vim = vim
local M = {}


M.palette = {
  name = 'mechanicus',
  base0 = '#1a1a17',
  base1 = '#302F27',
  base2 = '#21201a',
  base3 = '#3C3A2E',
  base4 = '#424033',
  base5 = '#54534d',
  base6 = '#9ca0a4',
  base7 = '#b1b1b1',
  base8 = '#e3e3e1',
  black = '#000000',
  brown = '#88481c',
  white = '#e6c68a',
  pink = '#fa4672',
  red = '#fb6767',
  green = '#529d51',
  lightGreen = '#88c288',
  blue = '#7abcf5',
  lightBlue = '#90d9ff',
  yellow = '#e6f074',
  orange = '#d57635',
  purple = '#a870b1',
  diff_add = '#77a66c',
  diff_remove = '#fb6767',
  diff_change = '#27406b',
  diff_text = '#23324d',
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
    ModeMsg = { fg = palette.white, style = 'bold' },
    MoreMsg = { fg = palette.white, style = 'bold' },
    ErrorMsg = { fg = palette.red, style = 'bold' },
    WarningMsg = { fg = palette.yellow, style = 'bold' },
    VertSplit = { fg = palette.brown },
    LineNr = { fg = palette.base5, bg = palette.base0 },
    Cursor = { style = 'reverse' },
    CursorLine = { bg = palette.base2 },
    CursorLineNr = { fg = palette.base7, bg = palette.base1 },
    SignColumn = { fg = palette.yellow, bg = palette.base2 },
    SpellBad = { fg = palette.red, style = 'undercurl' },
    SpellCap = { fg = palette.purple, style = 'undercurl' },
    SpellRare = { fg = palette.blue, style = 'undercurl' },
    SpellLocal = { fg = palette.pink, style = 'undercurl' },
    SpecialKey = { fg = palette.pink },
    Special = { fg = palette.yellow },
    Title = { fg = palette.yellow, style = 'bold' },
    Identifier = { fg = palette.blue, style = 'bold' },

    -- Git colors --
    DiffAdd = { bg = palette.diff_add },
    DiffDelete = { bg = palette.diff_remove },
    DiffChange = { bg = palette.diff_change },
    DiffText = { bg = palette.diff_text },
    diffAdded = { fg = palette.lightGreen },
    diffRemoved = { fg = palette.red },

    -- Popups --
    Pmenu = { fg = palette.white, bg = palette.base3 },
    PmenuSel = { fg = palette.base4, bg = palette.white },
    PmenuSelBold = { fg = palette.base4, bg = palette.orange },
    PmenuThumb = { fg = palette.purple, bg = palette.lightGreen },
    PmenuSbar = { bg = palette.base3 },
    String = { fg = palette.lightGreen, style = 'italic' },

    dbui_tables = { fg = palette.white },

    -- Diagnostics --
    DiagnosticSignError = {fg = palette.red },
    DiagnosticSignWarn = { fg = palette.yellow },
    DiagnosticSignInfo = { fg = palette.white },
    DiagnosticSignHint = { fg = palette.blue },
    DiagnosticVirtualTextError = { fg = palette.red },
    DiagnosticVirtualTextWarn = { fg = palette.yellow },
    DiagnosticVirtualTextInfo = { fg = palette.white },
    DiagnosticVirtualTextHint = { fg = palette.blue },
    DiagnosticUnderlineError = { style = 'undercurl', sp = palette.red },
    DiagnosticUnderlineWarn = { style = 'undercurl', sp = palette.yellow },
    DiagnosticUnderlineInfo = { style = 'undercurl', sp = palette.white },
    DiagnosticUnderlineHint = { style = 'undercurl', sp = palette.blue },

    -- hrsh7th/nvim-cmp
    CmpDocumentation = { fg = palette.white, bg = palette.base1 },
    CmpDocumentationBorder = { fg = palette.white, bg = palette.base1 },
    CmpItemAbbr = { fg = palette.white },
    CmpItemAbbrMatch = { fg = palette.blue },
    CmpItemAbbrMatchFuzzy = { fg = palette.blue },
    CmpItemKindDefault = { fg = palette.white },
    CmpItemMenu = { fg = palette.base6 },
    CmpItemKindKeyword = { fg = palette.pink },
    CmpItemKindVariable = { fg = palette.pink },
    CmpItemKindConstant = { fg = palette.pink },
    CmpItemKindReference = { fg = palette.pink },
    CmpItemKindValue = { fg = palette.pink },
    CmpItemKindFunction = { fg = palette.blue },
    CmpItemKindMethod = { fg = palette.blue },
    CmpItemKindConstructor = { fg = palette.blue },
    CmpItemKindClass = { fg = palette.orange },
    CmpItemKindInterface = { fg = palette.orange },
    CmpItemKindStruct = { fg = palette.orange },
    CmpItemKindEvent = { fg = palette.orange },
    CmpItemKindEnum = { fg = palette.orange },
    CmpItemKindUnit = { fg = palette.orange },
    CmpItemKindModule = { fg = palette.yellow },
    CmpItemKindProperty = { fg = palette.lightGreen },
    CmpItemKindField = { fg = palette.lightGreen },
    CmpItemKindTypeParameter = { fg = palette.lightGreen },
    CmpItemKindEnumMember = { fg = palette.lightGreen },
    CmpItemKindOperator = { fg = palette.lightGreen },

    -- WhichKey
    WhichKey = {fg = palette.lightGreen, style = 'bold'},
    WhichKeyFloat = {fg = palette.white, bg = palette.base2},
    WhichKeyGroup = {fg = palette.orange, style = 'italic'},
    WhichKeySeparator = {fg = palette.yellow, style = 'bold'},
    WhichKeyDesc = {fg = palette.blue, style = 'italic'},

    -- Telescope --
    TelescopeBorder = { fg = palette.lightGreen },
    TelescopePreviewRead = { fg = palette.green},
    TelescopePreviewWrite = { fg = palette.blue },
    TelescopePreviewExecute = { fg = palette.white, style = 'bold' },
    TelescopePreviewDirectory = { fg = palette.base7, style = 'italic' },
    TelescopePreviewSize = { fg = palette.purple, style = 'italic' },
    TelescopePreviewUser = { fg = palette.green, style = 'italic' },
    TelescopePreviewGroup = { fg = palette.lightGreen, style = 'italic' },
    TelescopePreviewDate = { fg = palette.base6, style = 'italic' },
    TelescopePreviewTitle = { fg = palette.yellow, style = 'bold' },
    TelescopePrompt = { fg = palette.blue },
    TelescopePromptBorder = { fg = palette.orange },
    TelescopePromptTitle = { fg = palette.yellow, style = 'bold' },
    TelescopeResultsTitle = { fg = palette.yellow, style = 'bold' },
    TelescopeResultsBorder = { fg = palette.blue },

    -- Lualine --
    lualine_a_normal = { fg = palette.black, bg = palette.white},
    lualine_a_visual = { fg = palette.black, bg = palette.yellow},
    lualine_a_insert = { fg = palette.black, bg = palette.lightGreen},
    lualine_a_command = { fg = palette.black, bg = palette.blue},

    -- Treesitter --
    ['@variable'] = { fg = palette.orange },
    ['@variable.builtin'] = { fg = palette.lightBlue, style = 'bold' },
    ['@boolean'] = { fg = palette.purple, style = 'bold' },
    ['@string'] = { fg = palette.green, style = 'italic' },
    ['@string.escape'] = { fg = palette.purple },
    ['@character'] = { fg = palette.green, style = 'italic' },
    ['@number'] = { fg = palette.purple },
    ['@float'] = { fg = palette.purple },
    ['@property'] = { fg = palette.orange },
    ['@constant'] = { fg = palette.lightBlue, style = 'bold' },
    ['@constant.builtin'] = { fg = palette.purple, style = 'bold' },
    ['@constructor'] = { fg = palette.yellow, style = 'bold' },
    ['@conditional'] = { fg = palette.blue, style = 'italic' },
    ['@comment'] = { fg = palette.base6, style = 'italic' },
    --
    ['@keyword'] = { fg = palette.blue, style = 'italic' },
    ['@keyword.function'] = { fg = palette.yellow, style = 'italic' },
    ['@keyword.operator'] = { fg = palette.yellow, style = 'bold' },
    --
    ['@include'] = { fg = palette.blue, style = 'italic' },
    ['@namespace'] = { fg = palette.base8, style = 'italic' },
    ['@exception'] = { fg = palette.blue, style = 'italic' },
    ['@storageclass'] = { fg = palette.yellow, style = 'italic' },
    --
    ['@function'] = { fg = palette.lightGreen, style = 'bold' },
    ['@function.builtin'] = { fg = palette.lightGreen },
    ['@function.macro'] = { fg = palette.lightGreen, style = 'italic' },
    ['@method'] = { fg = palette.lightGreen, style = 'bold' },
    ['@operator'] = { fg = palette.yellow, style = 'bold' },
    ['@conditional.ternary'] = { fg = palette.yellow, style = 'italic' },
    ['@parameter'] = {  fg = palette.purple },
    ['@reference'] = {  fg = palette.purple },
    --
    ['@punctuation.delimiter'] = { fg = palette.yellow, style = 'bold' },
    ['@punctuation.bracket'] = { fg = palette.brown, style = 'bold' },
    ['@punctuation.special'] = { fg = palette.brown },
    ['@repeat'] = { fg = palette.blue, style = 'italic' },
    --
    ['@tag'] = { fg = palette.yellow, style = 'bold' },
    ['@tag.delimiter'] = { fg = palette.brown },
    ['@tag.attribute'] = { fg = palette.orange },
    ['@label'] = { fg = palette.pink, style = 'italic' },
    ['@type'] = { fg = palette.yellow, style = 'bold' },
    ['@type.builtin'] = { fg = palette.base6, style = 'italic' },
    ['@type.qualifier'] = { fg = palette.blue, style = 'italic' },
    ['@type.definition'] = { fg = palette.lightGreen, style = 'bold' },
    ['@field'] = { fg = palette.white, style = 'italic' },
  }
end

M.setup = function()
  local theme = M.highlight_group(M.palette)

  vim.cmd.hi('clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd.syntax('reset')
  end

  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = M.palette.name

  for group, color in pairs(theme) do
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
    local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
    local sp = color.sp and 'guisp = ' .. color.sp or 'guisp = NONE'
    vim.cmd.highlight(group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
  end
end

return M
