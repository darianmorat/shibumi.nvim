local M = {}
local util = require("shibumi.util")

M.setup = function(colors)
   local tint = util.tinter(colors.bg0)

   local highlights = {

      -- TITLE: Editor Interface ------------------------------------------------------------------

      Normal = { fg = colors.fg0, bg = colors.bg0 },
      NormalNC = { fg = colors.fg0, bg = colors.bg0 },
      NormalFloat = { fg = colors.fg0, bg = colors.bg0 },
      MsgArea = { fg = colors.fg0, bg = colors.bg0 },
      Terminal = { fg = colors.fg0, bg = colors.bg0 },

      Cursor = { fg = colors.bg0, bg = colors.fg0 },
      CursorLine = { bg = colors.none },
      CursorColumn = { bg = colors.bg1 },
      Visual = { bg = colors.visual },

      LineNr = { fg = colors.grey },
      CursorLineNr = { fg = colors.fg0 },
      SignColumn = { bg = colors.bg0 },
      ColorColumn = { bg = colors.bg1 },
      EndOfBuffer = { fg = colors.bg5 },

      WinSeparator = { fg = colors.border },
      Folded = { fg = colors.fg0, bg = colors.bg5 },
      FoldColumn = { fg = colors.grey, bg = colors.bg0 },

      MatchParen = { fg = colors.fg1, bg = colors.bg5 },
      YankHighlight = { fg = colors.fg1, bg = colors.bg5 },

      QuickFixLine = { fg = colors.blue, underline = true },
      FloatBorder = { fg = colors.fg0, bg = colors.bg0 },
      Conceal = { fg = colors.grey, bg = colors.bg5 },

      Pmenu = { bg = colors.menu },
      PmenuSel = { bg = colors.select },
      PmenuSbar = { bg = colors.bg5 },
      PmenuThumb = { bg = colors.grey },

      StatusLine = { fg = colors.fg0, bg = colors.bg2 },
      StatusLineNC = { fg = colors.grey, bg = colors.bg2 },

      Search = { fg = colors.bg0, bg = tint(colors.yellow, 0.8) },
      CurSearch = { fg = colors.bg0, bg = tint(colors.yellow, 0.8) },
      Substitute = { fg = colors.fg1, bg = tint(colors.yellow, 0.2) },

      TabLine = { fg = colors.fg0, bg = colors.bg2 },
      TabLineFill = { fg = colors.fg0, bg = colors.bg2 },
      TabLineSel = { fg = colors.fg0, bg = colors.select },

      SpellBad = { sp = colors.red, undercurl = true },
      SpellCap = { sp = colors.yellow, undercurl = true },
      SpellLocal = { sp = colors.blue, undercurl = true },
      SpellRare = { sp = colors.magenta, undercurl = true },

      -- TITLE: Core Syntax -----------------------------------------------------------------------

      Comment = { fg = colors.grey },
      String = { fg = colors.green },
      Character = { fg = colors.green },
      Constant = { fg = colors.cyan },
      Number = { fg = colors.yellow },
      Float = { fg = colors.yellow },
      Boolean = { fg = colors.yellow },
      Identifier = { fg = colors.cyan },
      Function = { fg = colors.red },
      Statement = { fg = colors.grey },
      Keyword = { fg = colors.blue },
      Operator = { fg = colors.blue },
      Type = { fg = colors.yellow },
      Special = { fg = colors.red },
      Delimiter = { fg = colors.fg0 },
      Title = { fg = colors.yellow, bold = true },
      PreProc = { fg = colors.magenta },

      Structure = { fg = colors.yellow },
      StorageClass = { fg = colors.yellow },
      PreCondit = { fg = colors.magenta },
      Include = { fg = colors.magenta },
      Define = { fg = colors.magenta },
      Typedef = { fg = colors.yellow },
      Exception = { fg = colors.magenta },
      Conditional = { fg = colors.magenta },
      Repeat = { fg = colors.magenta },
      Macro = { fg = colors.magenta },
      Error = { fg = colors.magenta },
      Label = { fg = colors.magenta },
      SpecialChar = { fg = colors.red },
      SpecialComment = { fg = colors.grey },
      Todo = { fg = colors.red },
      Tag = { fg = colors.green },

      ModeMsg = { fg = colors.fg0 },
      MoreMsg = { fg = colors.green },
      OkMsg = { fg = colors.green },
      WarningMsg = { fg = colors.yellow },
      Question = { fg = colors.yellow },
      ErrorMsg = { fg = colors.red },

      Directory = { fg = colors.blue },
      SpecialKey = { fg = colors.grey },
      NonText = { fg = colors.grey },
      Whitespace = { fg = colors.grey },

      -- TITLE: Treesitter Captures ---------------------------------------------------------------

      ["@variable"] = { fg = colors.fg0 },
      ["@variable.builtin"] = { fg = colors.yellow },
      ["@constructor"] = { fg = colors.cyan },
      ["@function.macro"] = { fg = colors.cyan },

      ["@type.builtin"] = { fg = colors.yellow },
      ["@constant"] = { fg = colors.yellow },
      ["@constant.builtin"] = { fg = colors.yellow },

      ["@keyword.import"] = { fg = colors.magenta },
      ["@keyword.return"] = { fg = colors.magenta },
      ["@keyword.conditional"] = { fg = colors.magenta },
      ["@keyword.exception"] = { fg = colors.magenta },
      ["@keyword.repeat"] = { fg = colors.magenta },
      ["@keyword.operator"] = { fg = colors.magenta },

      ["@punctuation.delimiter"] = { fg = colors.fg2 },

      ["@lsp.type.class"] = { fg = colors.cyan },
      ["@lsp.type.namespace"] = { fg = colors.cyan },
      ["@lsp.typemod.variable.defaultLibrary"] = { fg = colors.yellow },
      ["@string.special.symbol"] = { fg = colors.cyan },

      ["@tag"] = { fg = colors.red },
      ["@tag.attribute"] = { fg = colors.purple },
      ["@tag.delimiter"] = { fg = colors.red },
      ["@tag.tsx"] = { fg = colors.cyan },

      ["@constant.css"] = { fg = colors.red },
      ["@type.css"] = { fg = colors.red },
      ["@attribute.css"] = { fg = colors.red },
      ["@keyword.css"] = { fg = colors.red },
      ["@property.css"] = { fg = colors.blue },
      ["@keyword.directive.css"] = { fg = colors.magenta },
      ["@keyword.modifier.css"] = { fg = colors.magenta },

      ["@property.json"] = { fg = colors.red },

      ["@tag.javascript"] = { fg = colors.cyan },
      ["@type.javascript"] = { fg = colors.fg0 },
      ["@constant.javascript"] = { fg = colors.fg0 },
      ["@lsp.type.class.javascript"] = { fg = colors.cyan },

      ["@type.tsx"] = { fg = colors.fg0 },
      ["@type.typescript"] = { fg = colors.fg0 },
      ["@constant.typescript"] = { fg = colors.fg0 },
      ["@keyword.directive.typescript"] = { fg = colors.green },

      ["@lsp.typemod.function.defaultLibrary"] = { fg = colors.red },

      ["@lsp.typemod.property.declaration.javascript"] = { fg = colors.fg0 },
      ["@lsp.typemod.property.defaultLibrary.javascript"] = { fg = colors.yellow },
      ["@lsp.typemod.variable.defaultLibrary.javascript"] = { fg = colors.yellow },
      ["@lsp.typemod.variable.defaultLibrary.javascriptreact"] = { fg = colors.yellow },

      ["@lsp.typemod.property.declaration.typescript"] = { fg = colors.fg0 },
      ["@lsp.typemod.property.defaultLibrary.typescript"] = { fg = colors.yellow },
      ["@lsp.typemod.variable.defaultLibrary.typescript"] = { fg = colors.yellow },
      ["@lsp.typemod.variable.defaultLibrary.typescriptreact"] = { fg = colors.yellow },

      ["@punctuation.special.astro"] = { fg = colors.yellow },
      ["@type.astro"] = { fg = colors.cyan },

      ["@constructor.lua"] = { fg = colors.fg0 },
      ["@module.builtin.lua"] = { fg = colors.cyan },
      ["@property.lua"] = { fg = colors.fg0 },
      ["@keyword.luadoc"] = { fg = colors.magenta },

      ["@type.java"] = { fg = colors.cyan },
      ["@keyword.type.java"] = { fg = colors.yellow },

      ["@markup.raw.block.markdown"] = { fg = colors.green },
      ["@markup.link.markdown_inline"] = { fg = colors.fg0 },
      ["@markup.link.label.markdown_inline"] = { fg = colors.blue },
      ["@keyword.directive.markdown"] = { fg = colors.fg2 },
      ["@markup.quote.markdown"] = { fg = colors.cyan },
      ["@label.markdown"] = { fg = colors.grey },
      ["@punctuation.special.markdown"] = { fg = colors.fg2 },

      -- TITLE: LSP & Diagnostics -----------------------------------------------------------------

      DiagnosticError = { fg = colors.red },
      DiagnosticWarn = { fg = colors.yellow },
      DiagnosticInfo = { fg = colors.cyan },
      DiagnosticHint = { fg = colors.magenta },
      DiagnosticOk = { fg = colors.green },

      DiagnosticVirtualTextError = { fg = colors.red, bg = tint(colors.red, 0.1) },
      DiagnosticVirtualTextWarn = { fg = colors.yellow, bg = tint(colors.yellow, 0.1) },
      DiagnosticVirtualTextInfo = { fg = colors.cyan, bg = tint(colors.cyan, 0.1) },
      DiagnosticVirtualTextHint = { fg = colors.magenta, bg = tint(colors.magenta, 0.1) },

      DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
      DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
      DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
      DiagnosticUnderlineHint = { sp = colors.magenta, undercurl = true },

      DiagnosticSignError = { fg = colors.red, bg = colors.bg0 },
      DiagnosticSignWarn = { fg = colors.yellow, bg = colors.bg0 },
      DiagnosticSignInfo = { fg = colors.blue, bg = colors.bg0 },
      DiagnosticSignHint = { fg = colors.magenta, bg = colors.bg0 },

      Added = { fg = colors.green },
      Removed = { fg = colors.red },
      Changed = { fg = colors.blue },

      DiffAdd = { fg = colors.none, bg = colors.diff_add },
      DiffDelete = { fg = colors.grey, bg = colors.none },
      DiffChange = { fg = colors.none, bg = colors.diff_change },
      DiffText = { fg = colors.fg1, bg = colors.diff_text },

      -- TITLE: Plugins Modules -------------------------------------------------------------------

      -- Lazy.nvim
      LazyProp = { fg = colors.grey },
      LazyDir = { fg = colors.blue },
      LazyCommitType = { fg = colors.magenta },
      LazyCommitScope = { fg = colors.magenta },
      LazyReasonRuntime = { fg = colors.blue },
      LazyReasonCmd = { fg = colors.yellow },
      LazyReasonImport = { fg = colors.magenta },
      LazyReasonKeys = { fg = colors.magenta },
      LazyReasonStart = { fg = colors.yellow },
      LazyUrl = { fg = colors.cyan, underline = true },

      -- FZF-lua
      FzfLuaBorder = { fg = colors.border },
      FzfLuaBufFlagCur = { fg = colors.yellow },
      FzfLuaHeaderText = { fg = colors.yellow },
      FzfLuaLiveSym = { fg = colors.fg0 },
      FzfLuaLivePrompt = { fg = colors.fg0 },
      FzfLuaPathLineNr = { fg = colors.green },
      FzfLuaPathColNr = { fg = colors.red },
      FzfLuaBufNr = { fg = colors.fg0 },
      FzfLuaHeaderBind = { fg = colors.fg0 },
      FzfLuaBufFlagAlt = { fg = colors.blue },

      -- Blink-cmp
      BlinkCmpDoc = { fg = colors.fg0, bg = colors.docs },
      BlinkCmpDocSeparator = { fg = colors.border, bg = colors.docs },
      BlinkCmpLabelMatch = { fg = colors.green },

      -- Indent Blankline
      IblIndent = { fg = colors.visual },

      -- GitSigns
      GitSignsAddPreview = { fg = colors.green, bg = colors.diff_add },
      GitSignsDeletePreview = { fg = colors.red, bg = colors.diff_delete },
      GitSignsDeleteVirtLn = { fg = colors.red, bg = colors.diff_delete },
   }

   local lsp_kind_icons_color = {
      Default = { fg = colors.magenta },
      Array = { fg = colors.yellow },
      Boolean = { fg = colors.yellow },
      Class = { fg = colors.cyan },
      Color = { fg = colors.green },
      Constant = { fg = colors.yellow },
      Constructor = { fg = colors.blue },
      Enum = { fg = colors.magenta },
      EnumMember = { fg = colors.yellow },
      Event = { fg = colors.yellow },
      Field = { fg = colors.magenta },
      File = { fg = colors.blue },
      Folder = { fg = colors.yellow },
      Function = { fg = colors.red },
      Interface = { fg = colors.green },
      Key = { fg = colors.cyan },
      Keyword = { fg = colors.blue },
      Method = { fg = colors.red },
      Module = { fg = colors.yellow },
      Namespace = { fg = colors.cyan },
      Null = { fg = colors.grey },
      Number = { fg = colors.yellow },
      Object = { fg = colors.cyan },
      Operator = { fg = colors.blue },
      Package = { fg = colors.yellow },
      Property = { fg = colors.purple },
      Reference = { fg = colors.yellow },
      Snippet = { fg = colors.green },
      String = { fg = colors.green },
      Struct = { fg = colors.magenta },
      Text = { fg = colors.fg0 },
      TypeParameter = { fg = colors.red },
      Unit = { fg = colors.green },
      Value = { fg = colors.yellow },
      Variable = { fg = colors.fg0 },
   }

   for kind, color in pairs(lsp_kind_icons_color) do
      highlights["BlinkCmpKind" .. kind] = { fg = color.fg }
   end

   return highlights
end

return M
