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

      Search = { fg = colors.bg0, bg = tint(colors.orange, 0.8) },
      CurSearch = { fg = colors.bg0, bg = tint(colors.orange, 0.8) },
      Substitute = { fg = colors.fg1, bg = tint(colors.orange, 0.2) },

      TabLine = { fg = colors.fg0, bg = colors.bg2 },
      TabLineFill = { fg = colors.fg0, bg = colors.bg2 },
      TabLineSel = { fg = colors.fg0, bg = colors.select },

      SpellBad = { sp = colors.red, undercurl = true },
      SpellCap = { sp = colors.orange, undercurl = true },
      SpellLocal = { sp = colors.blue, undercurl = true },
      SpellRare = { sp = colors.pink, undercurl = true },

      -- TITLE: Core Syntax -----------------------------------------------------------------------

      Comment = { fg = colors.grey },
      String = { fg = colors.green },
      Character = { fg = colors.green },
      Constant = { fg = colors.aqua },
      Number = { fg = colors.orange },
      Float = { fg = colors.orange },
      Boolean = { fg = colors.orange },
      Identifier = { fg = colors.aqua },
      Function = { fg = colors.red },
      Statement = { fg = colors.grey },
      Keyword = { fg = colors.blue },
      Operator = { fg = colors.blue },
      Type = { fg = colors.orange },
      Special = { fg = colors.red },
      Delimiter = { fg = colors.fg0 },
      Title = { fg = colors.orange, bold = true },
      PreProc = { fg = colors.pink },

      Structure = { fg = colors.orange },
      StorageClass = { fg = colors.orange },
      PreCondit = { fg = colors.pink },
      Include = { fg = colors.pink },
      Define = { fg = colors.pink },
      Typedef = { fg = colors.orange },
      Exception = { fg = colors.pink },
      Conditional = { fg = colors.pink },
      Repeat = { fg = colors.pink },
      Macro = { fg = colors.pink },
      Error = { fg = colors.pink },
      Label = { fg = colors.pink },
      SpecialChar = { fg = colors.red },
      SpecialComment = { fg = colors.grey },
      Todo = { fg = colors.red },
      Tag = { fg = colors.green },

      ModeMsg = { fg = colors.fg0 },
      MoreMsg = { fg = colors.green },
      OkMsg = { fg = colors.green },
      WarningMsg = { fg = colors.orange },
      Question = { fg = colors.orange },
      ErrorMsg = { fg = colors.red },

      Directory = { fg = colors.blue },
      SpecialKey = { fg = colors.grey },
      NonText = { fg = colors.grey },
      Whitespace = { fg = colors.grey },

      -- TITLE: Treesitter Captures ---------------------------------------------------------------

      ["@variable"] = { fg = colors.fg0 },
      ["@variable.builtin"] = { fg = colors.orange },
      ["@constructor"] = { fg = colors.aqua },
      ["@function.macro"] = { fg = colors.aqua },

      ["@type.builtin"] = { fg = colors.orange },
      ["@constant"] = { fg = colors.orange },
      ["@constant.builtin"] = { fg = colors.orange },

      ["@keyword.import"] = { fg = colors.pink },
      ["@keyword.return"] = { fg = colors.pink },
      ["@keyword.conditional"] = { fg = colors.pink },
      ["@keyword.exception"] = { fg = colors.pink },
      ["@keyword.repeat"] = { fg = colors.pink },
      ["@keyword.operator"] = { fg = colors.pink },

      ["@punctuation.delimiter"] = { fg = colors.fg2 },

      ["@lsp.type.class"] = { fg = colors.aqua },
      ["@lsp.type.namespace"] = { fg = colors.aqua },
      ["@lsp.typemod.variable.defaultLibrary"] = { fg = colors.orange },
      ["@string.special.symbol"] = { fg = colors.aqua },

      ["@tag"] = { fg = colors.red },
      ["@tag.attribute"] = { fg = colors.purple },
      ["@tag.delimiter"] = { fg = colors.red },
      ["@tag.tsx"] = { fg = colors.aqua },

      ["@constant.css"] = { fg = colors.red },
      ["@type.css"] = { fg = colors.red },
      ["@attribute.css"] = { fg = colors.red },
      ["@keyword.css"] = { fg = colors.red },
      ["@property.css"] = { fg = colors.blue },
      ["@keyword.directive.css"] = { fg = colors.pink },
      ["@keyword.modifier.css"] = { fg = colors.pink },

      ["@property.json"] = { fg = colors.red },

      ["@tag.javascript"] = { fg = colors.aqua },
      ["@type.javascript"] = { fg = colors.fg0 },
      ["@constant.javascript"] = { fg = colors.fg0 },
      ["@lsp.type.class.javascript"] = { fg = colors.aqua },

      ["@type.tsx"] = { fg = colors.fg0 },
      ["@type.typescript"] = { fg = colors.fg0 },
      ["@constant.typescript"] = { fg = colors.fg0 },
      ["@keyword.directive.typescript"] = { fg = colors.green },

      ["@lsp.typemod.function.defaultLibrary"] = { fg = colors.red },

      ["@lsp.typemod.property.declaration.javascript"] = { fg = colors.fg0 },
      ["@lsp.typemod.property.defaultLibrary.javascript"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary.javascript"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary.javascriptreact"] = { fg = colors.orange },

      ["@lsp.typemod.property.declaration.typescript"] = { fg = colors.fg0 },
      ["@lsp.typemod.property.defaultLibrary.typescript"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary.typescript"] = { fg = colors.orange },
      ["@lsp.typemod.variable.defaultLibrary.typescriptreact"] = { fg = colors.orange },

      ["@punctuation.special.astro"] = { fg = colors.orange },
      ["@type.astro"] = { fg = colors.aqua },

      ["@constructor.lua"] = { fg = colors.fg0 },
      ["@module.builtin.lua"] = { fg = colors.aqua },
      ["@property.lua"] = { fg = colors.fg0 },
      ["@keyword.luadoc"] = { fg = colors.pink },

      ["@type.java"] = { fg = colors.aqua },
      ["@keyword.type.java"] = { fg = colors.orange },

      ["@markup.raw.block.markdown"] = { fg = colors.green },
      ["@markup.link.markdown_inline"] = { fg = colors.fg0 },
      ["@markup.link.label.markdown_inline"] = { fg = colors.blue },
      ["@keyword.directive.markdown"] = { fg = colors.fg2 },
      ["@markup.quote.markdown"] = { fg = colors.aqua },
      ["@label.markdown"] = { fg = colors.grey },
      ["@punctuation.special.markdown"] = { fg = colors.fg2 },

      -- TITLE: LSP & Diagnostics -----------------------------------------------------------------

      DiagnosticError = { fg = colors.red },
      DiagnosticWarn = { fg = colors.orange },
      DiagnosticInfo = { fg = colors.aqua },
      DiagnosticHint = { fg = colors.pink },
      DiagnosticOk = { fg = colors.green },

      DiagnosticVirtualTextError = { fg = colors.red, bg = tint(colors.red, 0.1) },
      DiagnosticVirtualTextWarn = { fg = colors.orange, bg = tint(colors.orange, 0.1) },
      DiagnosticVirtualTextInfo = { fg = colors.aqua, bg = tint(colors.aqua, 0.1) },
      DiagnosticVirtualTextHint = { fg = colors.pink, bg = tint(colors.pink, 0.1) },

      DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
      DiagnosticUnderlineWarn = { sp = colors.orange, undercurl = true },
      DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
      DiagnosticUnderlineHint = { sp = colors.pink, undercurl = true },

      DiagnosticSignError = { fg = colors.red, bg = colors.bg0 },
      DiagnosticSignWarn = { fg = colors.orange, bg = colors.bg0 },
      DiagnosticSignInfo = { fg = colors.blue, bg = colors.bg0 },
      DiagnosticSignHint = { fg = colors.pink, bg = colors.bg0 },

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
      LazyCommitType = { fg = colors.pink },
      LazyCommitScope = { fg = colors.pink },
      LazyReasonRuntime = { fg = colors.blue },
      LazyReasonCmd = { fg = colors.orange },
      LazyReasonImport = { fg = colors.pink },
      LazyReasonKeys = { fg = colors.pink },
      LazyReasonStart = { fg = colors.orange },
      LazyUrl = { fg = colors.aqua, underline = true },

      -- FZF-lua
      FzfLuaBorder = { fg = colors.border },
      FzfLuaBufFlagCur = { fg = colors.orange },
      FzfLuaHeaderText = { fg = colors.orange },
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
      Default = { fg = colors.pink },
      Array = { fg = colors.orange },
      Boolean = { fg = colors.orange },
      Class = { fg = colors.aqua },
      Color = { fg = colors.green },
      Constant = { fg = colors.orange },
      Constructor = { fg = colors.blue },
      Enum = { fg = colors.pink },
      EnumMember = { fg = colors.orange },
      Event = { fg = colors.orange },
      Field = { fg = colors.pink },
      File = { fg = colors.blue },
      Folder = { fg = colors.orange },
      Function = { fg = colors.red },
      Interface = { fg = colors.green },
      Key = { fg = colors.aqua },
      Keyword = { fg = colors.blue },
      Method = { fg = colors.red },
      Module = { fg = colors.orange },
      Namespace = { fg = colors.aqua },
      Null = { fg = colors.grey },
      Number = { fg = colors.orange },
      Object = { fg = colors.aqua },
      Operator = { fg = colors.blue },
      Package = { fg = colors.orange },
      Property = { fg = colors.purple },
      Reference = { fg = colors.orange },
      Snippet = { fg = colors.green },
      String = { fg = colors.green },
      Struct = { fg = colors.pink },
      Text = { fg = colors.fg0 },
      TypeParameter = { fg = colors.red },
      Unit = { fg = colors.green },
      Value = { fg = colors.orange },
      Variable = { fg = colors.fg0 },
   }

   for kind, color in pairs(lsp_kind_icons_color) do
      highlights["BlinkCmpKind" .. kind] = { fg = color.fg }
   end

   return highlights
end

return M
