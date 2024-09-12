local vim = vim
local M = {}

M.palette = {
  name =        'mechanicus',
  base0       = '#1a1a17',
  base1       = '#302F27',
  base2       = '#3C3A2E',
  base3       = '#424033',
  base4       = '#54534d',
  base5       = '#9ca0a4',
  base6       = '#b1b1b1',
  base7       = '#e3e3e1',
  ansi0       = '#21201a',
  ansi1       = '#ef6831',
  ansi2       = '#529d51',
  ansi3       = '#d6d054',
  ansi4       = '#6aacff',
  ansi5       = '#cf89cf',
  ansi6       = '#c1b1b1',
  ansi7       = '#e6c68a',
  ansi8       = '#433831',
  ansi9       = '#ff8818',
  ansi10      = '#88c288',
  ansi11      = '#faf974',
  ansi12      = '#8fcfff',
  ansi13      = '#efb9ff',
  ansi14      = '#e6e1e1',
  ansi15      = '#ffdfba',
  diff_add    = '#77a66c',
  diff_remove = '#ef6831',
  diff_change = '#27407f',
  diff_text   = '#d6d054',
}

M.treesitter_highlights = {
  keyword = { fg = M.palette.ansi4, style = 'italic' },
  comment = { fg = M.palette.base4, style = 'italic' },
  builtin_consts = { fg = M.palette.ansi13, style = 'italic' },
  consts = { fg = M.palette.ansi12, style = 'bold' },
  strings = { fg = M.palette.ansi2, style = 'italic' },
  entity = { fg = M.palette.ansi11, style = 'bold'},
  variable = { fg = M.palette.ansi9 },
  property = { fg = M.palette.ansi7, style ='italic' },
  parameter = { fg = M.palette.lightansi9, style = 'italic' },
  punctuation = { fg = M.palette.ansi6, style = 'bold' },
  parentheses = { fg = M.palette.ansi8, style = 'bold' },
  functions = { fg = M.palette.ansi10, style = 'bold' },
  types = { fg = M.palette.base6, style = 'italic' },
  namespaces = { fg = M.palette.ansi10, style = 'italic' },
}

M.highlight_group = function(palette)
  return {

    -- Base --
    Normal = { fg = palette.ansi7, bg = palette.ansi0 },
    NormalFloat = { bg = palette.base1 },
    NonText = { fg = palette.base2 },
    Visual = { bg = palette.base3 },
    VisualNOS = { bg = palette.base2 },
    Search = { fg = palette.ansi0, bg = palette.ansi3 },
    IncSearch = { fg = palette.ansi0, bg = palette.ansi9 },
    MatchParen = { fg = palette.ansi9 },
    Question = { fg = palette.ansi3 },
    ModeMsg = { fg = palette.ansi7, style = 'bold' },
    MoreMsg = { fg = palette.ansi7, style = 'bold' },
    ErrorMsg = { fg = palette.ansi1, style = 'bold' },
    WarningMsg = { fg = palette.ansi3, style = 'bold' },
    VertSplit = { fg = palette.ansi6 },
    LineNr = { fg = palette.base4, bg = palette.base0 },
    Cursor = { style = 'reverse' },
    CursorLine = { bg = palette.ansi0 },
    CursorLineNr = { fg = palette.base6, bg = palette.base1, style = 'bold' },
    CursorLineSign = { fg = palette.base6, bg = palette.base1 },
    SignColumn = { bg = palette.base0 },
    ColorColumn = { bg = palette.base1 },
    SpellBad = { fg = palette.ansi1, style = 'undercurl' },
    SpellCap = { fg = palette.ansi5, style = 'undercurl' },
    SpellRare = { fg = palette.ansi4, style = 'undercurl' },
    SpellLocal = { fg = palette.ansi9, style = 'undercurl' },
    SpecialKey = { fg = palette.ansi9 },
    Special = { fg = palette.ansi3 },
    Title = { fg = palette.ansi11, style = 'bold' },
    Identifier = { fg = palette.ansi4, style = 'bold' },

    -- Git colors --
    DiffAdd = { bg = palette.diff_add },
    DiffDelete = { bg = palette.diff_remove },
    DiffChange = { bg = palette.diff_change },
    DiffText = { bg = palette.diff_text },
    diffAdded = { fg = palette.ansi10 },
    diffRemoved = { fg = palette.ansi1 },

    -- Popups --
    Pmenu = { fg = palette.ansi7, bg = palette.base2 },
    PmenuSel = { fg = palette.base3, bg = palette.ansi7 },
    PmenuSelBold = { fg = palette.base3, bg = palette.ansi9 },
    PmenuThumb = { fg = palette.ansi5, bg = palette.ansi10 },
    PmenuSbar = { bg = palette.base2 },
    String = { fg = palette.ansi10, style = 'italic' },

    dbui_tables = { fg = palette.ansi7 },

    -- Diagnostics --
    DiagnosticSignError = {fg = palette.ansi1 },
    DiagnosticSignWarn = { fg = palette.ansi3 },
    DiagnosticSignInfo = { fg = palette.ansi7 },
    DiagnosticSignHint = { fg = palette.ansi4 },
    DiagnosticVirtualTextError = { fg = palette.ansi1 },
    DiagnosticVirtualTextWarn = { fg = palette.ansi3 },
    DiagnosticVirtualTextInfo = { fg = palette.ansi7 },
    DiagnosticVirtualTextHint = { fg = palette.ansi4 },
    DiagnosticUnderlineError = { style = 'undercurl', sp = palette.ansi1 },
    DiagnosticUnderlineWarn = { style = 'undercurl', sp = palette.ansi3 },
    DiagnosticUnderlineInfo = { style = 'undercurl', sp = palette.ansi7 },
    DiagnosticUnderlineHint = { style = 'undercurl', sp = palette.ansi4 },
    DiagnosticError = { style = 'undercurl', sp = palette.ansi1 },
    DiagnosticWarn = { style = 'undercurl', sp = palette.ansi3 },
    DiagnosticInfo = { style = 'undercurl', sp = palette.ansi7 },
    DiagnosticHint = { style = 'undercurl', sp = palette.ansi4 },

    -- hrsh7th/nvim-cmp
    CmpDocumentation = { fg = palette.ansi7, bg = palette.base1 },
    CmpDocumentationBorder = { fg = palette.ansi7, bg = palette.base1 },
    CmpItemAbbr = { fg = palette.ansi7 },
    CmpItemAbbrMatch = { fg = palette.ansi4 },
    CmpItemAbbrMatchFuzzy = { fg = palette.ansi4 },
    CmpItemKindDefault = { fg = palette.ansi7 },
    CmpItemMenu = { fg = palette.base5 },
    CmpItemKindKeyword = { fg = palette.ansi9 },
    CmpItemKindVariable = { fg = palette.ansi9 },
    CmpItemKindConstant = { fg = palette.ansi9 },
    CmpItemKindReference = { fg = palette.ansi9 },
    CmpItemKindValue = { fg = palette.ansi9 },
    CmpItemKindFunction = { fg = palette.ansi4 },
    CmpItemKindMethod = { fg = palette.ansi4 },
    CmpItemKindConstructor = { fg = palette.ansi4 },
    CmpItemKindClass = { fg = palette.ansi9 },
    CmpItemKindInterface = { fg = palette.ansi9 },
    CmpItemKindStruct = { fg = palette.ansi9 },
    CmpItemKindEvent = { fg = palette.ansi9 },
    CmpItemKindEnum = { fg = palette.ansi9 },
    CmpItemKindUnit = { fg = palette.ansi9 },
    CmpItemKindModule = { fg = palette.ansi3 },
    CmpItemKindProperty = { fg = palette.ansi10 },
    CmpItemKindField = { fg = palette.ansi10 },
    CmpItemKindTypeParameter = { fg = palette.ansi10 },
    CmpItemKindEnumMember = { fg = palette.ansi10 },
    CmpItemKindOperator = { fg = palette.ansi10 },

    -- WhichKey
    WhichKey = {fg = palette.ansi10, style = 'bold'},
    WhichKeyFloat = {fg = palette.ansi7, bg = palette.ansi0},
    WhichKeyGroup = {fg = palette.ansi9, style = 'italic'},
    WhichKeySeparator = {fg = palette.ansi3, style = 'bold'},
    WhichKeyDesc = {fg = palette.ansi4, style = 'italic'},

    -- Telescope --
    TelescopeBorder = { fg = palette.ansi10 },
    TelescopePreviewRead = { fg = palette.ansi2},
    TelescopePreviewWrite = { fg = palette.ansi4 },
    TelescopePreviewExecute = { fg = palette.ansi7, style = 'bold' },
    TelescopePreviewDirectory = { fg = palette.base6, style = 'italic' },
    TelescopePreviewSize = { fg = palette.ansi5, style = 'italic' },
    TelescopePreviewUser = { fg = palette.ansi2, style = 'italic' },
    TelescopePreviewGroup = { fg = palette.ansi10, style = 'italic' },
    TelescopePreviewDate = { fg = palette.base5, style = 'italic' },
    TelescopePreviewTitle = { fg = palette.ansi3, style = 'bold' },
    TelescopePrompt = { fg = palette.ansi4 },
    TelescopePromptBorder = { fg = palette.ansi9 },
    TelescopePromptTitle = { fg = palette.ansi3, style = 'bold' },
    TelescopeResultsTitle = { fg = palette.ansi3, style = 'bold' },
    TelescopeResultsBorder = { fg = palette.ansi4 },

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
    ['@label'] = { fg = palette.ansi9, style = 'italic' },

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
