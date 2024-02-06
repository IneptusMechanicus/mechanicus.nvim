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
  lightOrange = '#f59545',
  purple = '#a870b1',
  lightPurple = '#bf81c2',
  diff_add = '#77a66c',
  diff_remove = '#fb6767',
  diff_change = '#27406b',
  diff_text = '#23324d',
}

M.treesitter_highlights = {
  keyword = { fg = M.palette.blue, style = 'italic' },
  comment = { fg = M.palette.base5, style = 'italic' },
  builtin_consts = { fg = M.palette.lightPurple, style = 'italic' },
  consts = { fg = M.palette.lightBlue, style = 'bold' },
  strings = { fg = M.palette.green, style = 'italic' },
  entity = { fg = M.palette.yellow, style = 'bold'},
  variable = { fg = M.palette.orange },
  property = { fg = M.palette.white, style ='italic' },
  parameter = { fg = M.palette.lightOrange, style = 'italic' },
  punctuation = { fg = M.palette.base8, style = 'bold' },
  parentheses = { fg = M.palette.brown, style = 'bold' },
  functions = { fg = M.palette.lightGreen, style = 'bold' },
  types = { fg = M.palette.base7, style = 'italic' },
  namespaces = { fg = M.palette.lightGreen, style = 'italic' },
}

M.highlight_group = function(palette)
  return {

    -- Base --
    Normal = { fg = palette.white, bg = palette.base2 },
    NormalFloat = { bg = palette.base1 },
    NonText = { fg = palette.base3 },
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
    CursorLineNr = { fg = palette.base7, bg = palette.base1, style = 'bold' },
    CursorLineSign = { fg = palette.base7, bg = palette.base1 },
    SignColumn = { bg = palette.base0 },
    ColorColumn = { bg = palette.base1 },
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
    DiagnosticError = { style = 'undercurl', sp = palette.red },
    DiagnosticWarn = { style = 'undercurl', sp = palette.yellow },
    DiagnosticInfo = { style = 'undercurl', sp = palette.white },
    DiagnosticHint = { style = 'undercurl', sp = palette.blue },

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

    -- Treesitter --
    ['@string'] = M.treesitter_highlights.strings,
    ['@character'] = M.treesitter_highlights.strings,
    ['@boolean'] = M.treesitter_highlights.builtin_consts,
    ['@number'] = M.treesitter_highlights.builtin_consts,
    ['@number.float'] = M.treesitter_highlights.builtin_consts,
    ['@string.escape'] = M.treesitter_highlights.builtin_consts,
    ['@comment'] = M.treesitter_highlights.comment,
    ['@property'] = M.treesitter_highlights.property,
    ['@constant'] = M.treesitter_highlights.consts,
    ['@constant.builtin'] = M.treesitter_highlights.builtin_consts,
    ['@variable'] = M.treesitter_highlights.variable,
    ['@variable.member'] = M.treesitter_highlights.property,
    ['@variable.builtin'] = M.treesitter_highlights.consts,
    ['@variable.parameter'] = M.treesitter_highlights.parameter,
    --
    ['@keyword'] = M.treesitter_highlights.keyword,
    ['@keyword.import'] = M.treesitter_highlights.keyword,
    ['@keyword.repeat'] = M.treesitter_highlights.keyword,
    ['@keyword.function'] = M.treesitter_highlights.types,
    ['@keyword.operator'] = M.treesitter_highlights.punctuation,
    ['@keyword.exception'] = M.treesitter_highlights.keyword,
    ['@keyword.conditional'] = M.treesitter_highlights.keyword,
    ['@keyword.conditional.ternary'] = M.treesitter_highlights.entity,
    --
    ['@module'] = M.treesitter_highlights.namespaces,
    ['@storageclass'] = M.treesitter_highlights.types,
    --
    ['@function'] = M.treesitter_highlights.functions,
    ['@function.call'] = M.treesitter_highlights.functions,
    ['@function.macro'] = M.treesitter_highlights.namespaces,
    ['@function.method'] = M.treesitter_highlights.functions,
    ['@function.method.call'] = M.treesitter_highlights.functions,
    ['@function.builtin'] = M.treesitter_highlights.functions,
    ['@operator'] = M.treesitter_highlights.punctuation,
    ['@constructor'] = M.treesitter_highlights.entity,
    --
    ['@punctuation.bracket'] = M.treesitter_highlights.parentheses,
    ['@punctuation.special'] = M.treesitter_highlights.parentheses,
    ['@punctuation.delimiter'] = M.treesitter_highlights.punctuation,
    --
    ['@tag'] = M.treesitter_highlights.entity,
    ['@tag.attribute'] = M.treesitter_highlights.variable,
    ['@tag.delimiter'] = M.treesitter_highlights.parentheses,
    ['@type'] = M.treesitter_highlights.entity,
    ['@type.builtin'] = M.treesitter_highlights.types,
    ['@type.qualifier'] = M.treesitter_highlights.keyword,
    ['@type.definition'] = M.treesitter_highlights.functions,
    ['@label'] = { fg = palette.pink, style = 'italic' },

    -- LSP Semantic Tokens --

    ['@lsp.type.comment'] = M.treesitter_highlights.comment,
    ['@lsp.type.enum'] = M.treesitter_highlights.entity,
    ['@lsp.type.enumMember'] = M.treesitter_highlights.variable,
    ['@lsp.type.property'] = M.treesitter_highlights.variable,
    ['@lsp.type.interface'] = M.treesitter_highlights.entity,
    ['@lsp.type.class'] = M.treesitter_highlights.entity,
    ['@lsp.type.type'] = M.treesitter_highlights.entity,
    ['@lsp.type.variable'] = M.treesitter_highlights.variable,
    ['@lsp.type.namespace'] = M.treesitter_highlights.namespaces,
    ['@lsp.type.function'] = M.treesitter_highlights.functions,
    ['@lsp.type.decorator'] = M.treesitter_highlights.functions,
    ['@lsp.type.method'] = M.treesitter_highlights.functions,
    ['@lsp.type.parameter'] = M.treesitter_highlights.parameter
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

M.setup()

return M
