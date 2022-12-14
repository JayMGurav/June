--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym

  local red = hsl("#f44250")
  local orange = hsl("#f48c42")
  local yellow = hsl("#fecd1b")
  local green = hsl("#6cd968")
  local blue = hsl("#3992ff")
  local cyan = hsl("#3defe9")
  local pink = hsl("#d83bd5")
  local black = hsl("#000000")

  
  local gray_1k = hsl("#060606")
  local gray_900 = hsl("#111111")
  local gray_800 = hsl("#1e1e1e")
  local gray_700 = hsl("#292929")
  local gray_600 = hsl("#3f3f3f")
  local gray_500 = hsl("#6a726d")
  local gray_400 = hsl("#828282")
  local gray_300 = hsl("#b7bcbe")
  local gray_200 = hsl("#d0d0d0")
  local gray_100 = hsl("#eef2f8")

  local colors = {
    editor = {
      brand = hsl("#ADE792"),
      -- bg = hsl("#121212"),
      bg = hsl("#121212"),
      fg = hsl("#080808"),
      -- font = hsl("#5d5d5d"),
      font = gray_600,
    }
  }


  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn  { }, -- Columns set with 'colorcolumn'
    Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       { }, -- Character under the cursor
    lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   { bg = colors.gray_1k }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    { fg = blue }, -- Directory names (and other special names in listings)
    DiffAdd      { bg = green }, -- Diff mode: Added line |diff.txt|
    DiffChange   { bg = yellow }, -- Diff mode: Changed line |diff.txt|
    DiffDelete   { bg = red }, -- Diff mode: Deleted line |diff.txt|
    DiffText     { fg = gray_900 }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor   { }, -- Cursor in a focused terminal
    TermCursorNC { }, -- Cursor in an unfocused terminal
    ErrorMsg     { fg = red }, -- Error messages on the command line
    VertSplit    { bg = black }, -- Column separating vertically split windows
    Folded       { bg = gray_300, fg = gray_600 }, -- Line used for closed folds
    FoldColumn   { }, -- 'foldcolumn'
    SignColumn   { bg = gray_1k }, -- Column where |signs| are displayed
    IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute   { }, -- |:substitute| replacement text highlighting
    LineNr       { bg = gray_1k, fg = gray_500 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { fg = pink }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   { bg = cyan, fg = gray_600 }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg      { fg = pink }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea      { }, -- Area for messages and cmdline
    MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      { }, -- |more-prompt|
    NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       { fg = gray_200 }, -- Normal text
    NormalFloat  { fg = gray_300 }, -- Normal text in floating windows.
    NormalNC     { fg = gray_300 }, -- normal text in non-current windows
    Pmenu        { }, -- Popup menu: Normal item.
    PmenuSel     { }, -- Popup menu: Selected item.
    PmenuSbar    { }, -- Popup menu: Scrollbar.
    PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    Question     { }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine   { bg = gray_1k.lighten(2), fg = colors.editor.font }, -- Status line of current window
    StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      { }, -- Tab pages line, not active tab page label
    TabLineFill  { bg = gray_1k.lighten(2) }, -- Tab pages line, where there are no labels
    TabLineSel   { }, -- Tab pages line, active tab page label
    Title        { }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual       { bg = colors.editor.brand, fg = colors.editor.bg }, -- Visual mode selection
    VisualNOS    { bg = colors.editor.brand, fg = colors.editor.bg }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg   { fg = orange }, -- Warning messages
    Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator { bg = black }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu     { }, -- Current match in 'wildmenu' completion

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = gray_700, gui = "italic" }, -- Any comment

    Constant       { fg = gray_200 }, -- (*) Any constant
    String         { fg = yellow }, --   A string constant: "this is a string"
    Character      { fg = gray_200 }, --   A character constant: 'c', '\n'
    Number         { fg = gray_200 }, --   A number constant: 234, 0xff
    Boolean        { fg = blue }, --   A boolean constant: TRUE, false
    Float          { fg = gray_200 }, --   A floating point constant: 2.3e10

    Identifier     { fg = blue }, -- (*) Any variable name
    Function       { fg = blue }, --   Function name (also: methods for classes)
    Statement      { fg = gray_400 }, -- (*) Any statement
    Conditional    { fg = red }, --   if, then, else, endif, switch, etc.
    Repeat         { fg = blue }, --   for, do, while, etc.
    Label          { fg = blue }, --   case, default, etc.
    Operator       { fg = gray_200 }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = blue }, --   any other keyword
    Exception      { fg = blue }, --   try, catch, throw

    PreProc        { fg = blue }, -- (*) Generic Preprocessor
    Include        { fg = blue }, --   Preprocessor #include
    Define         { fg = blue }, --   Preprocessor #define
    Macro          { fg = blue }, --   Same as Define
    PreCondit      { fg = blue }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = cyan }, -- (*) int, long, char, etc.
    StorageClass   { fg = blue }, --   static, register, volatile, etc.
    Structure      { fg = blue }, --   struct, union, enum, etc.
    Typedef        { fg = gray_200 }, --   A typedef

    Special        { fg = blue }, -- (*) Any special symbol
    SpecialChar    { }, --   Special character in a constant
    Tag            { }, --   You can use CTRL-] on this
    Delimiter      { fg = yellow }, --   Character that needs attention
    SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    Debug          { }, --   Debugging statements

    Underlined     { fg = blue, gui = "underline" }, -- Text that stands out, HTML links
    Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = red }, -- Any erroneous construct
    Todo           { bg = cyan, fg = black }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    LspReferenceText            { fg = gray_300 } , -- Used for highlighting "text" references
    LspReferenceRead            { fg = gray_300 } , -- Used for highlighting "read" references
    LspReferenceWrite           { fg = gray_300 } , -- Used for highlighting "write" references
    LspCodeLens                 { fg = blue } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    LspCodeLensSeparator        { bg = blue, fg = gray_1k } , -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter { bg = blue, fg = gray_1k} , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = red } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = orange } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = blue} , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = cyan } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { fg = red } , -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { fg = orange } , -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { fg = blue} , -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { fg = cyan } , -- Used for "Hint" diagnostic virtual text.
    DiagnosticUnderlineError   { fg = red } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { fg = yellow } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { fg = blue} , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { fg = cyan } , -- Used to underline "Hint" diagnostics.
    DiagnosticFloatingError    { fg = red } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    DiagnosticFloatingWarn     { fg = orange } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    DiagnosticFloatingInfo     { fg = blue} , -- Used to color "Info" diagnostic messages in diagnostics float.
    DiagnosticFloatingHint     { fg = cyan } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    DiagnosticSignError        { fg = red } , -- Used for "Error" signs in sign column.
    DiagnosticSignWarn         { fg = orange } , -- Used for "Warn" signs in sign column.
    DiagnosticSignInfo         { fg = blue} , -- Used for "Info" signs in sign column.
    DiagnosticSignHint         { fg = cyan } , -- Used for "Hint" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    sym"@text.literal"      { fg = gray_700, gui = "italic" }, -- Comment
    sym"@text.reference"    { }, -- Identifier
    sym"@text.title"        { }, -- Title
    sym"@text.uri"          { fg = blue }, -- Underlined
    sym"@text.underline"    { }, -- Underlined
    sym"@text.todo"         { bg = blue, fg = black }, -- Todo
    sym"@comment"           { fg = gray_700, gui = "italic" }, -- Comment
    sym"@punctuation"       { fg = blue }, -- Delimiter
    sym"@constant"          { }, -- Constant
    sym"@constant.builtin"  { }, -- Special
    sym"@constant.macro"    { }, -- Define
    sym"@define"            { }, -- Define
    sym"@macro"             { }, -- Macro
    sym"@string"            { fg = yellow }, -- String
    sym"@string.escape"     { }, -- SpecialChar
    sym"@string.special"    { }, -- SpecialChar
    sym"@character"         { }, -- Character
    sym"@character.special" { }, -- SpecialChar
    sym"@number"            { }, -- Number
    sym"@boolean"           { }, -- Boolean
    sym"@float"             { }, -- Float
    sym"@function"          { }, -- Function
    sym"@function.builtin"  { }, -- Special
    sym"@function.macro"    { }, -- Macro
    sym"@parameter"         { }, -- Identifier
    sym"@method"            { }, -- Function
    sym"@field"             { }, -- Identifier
    sym"@property"          { }, -- Identifier
    sym"@constructor"       { }, -- Special
    sym"@conditional"       { }, -- Conditional
    sym"@repeat"            { }, -- Repeat
    sym"@label"             { }, -- Label
    sym"@operator"          { }, -- Operator
    sym"@keyword"           { }, -- Keyword
    sym"@exception"         { }, -- Exception
    sym"@variable"          { }, -- Identifier
    sym"@type"              { }, -- Type
    sym"@type.definition"   { }, -- Typedef
    sym"@storageclass"      { }, -- StorageClass
    sym"@structure"         { }, -- Structure
    sym"@namespace"         { }, -- Identifier
    sym"@include"           { }, -- Include
    sym"@preproc"           { }, -- PreProc
    sym"@debug"             { }, -- Debug
    sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
