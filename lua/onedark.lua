M = {}

M.highlight = function(group, options)
    local guifg = options.fg or "NONE"
    local guibg = options.bg or "NONE"
    local gui = options.gui or "NONE"

    vim.cmd(string.format("highlight %s guifg=%s guibg=%s gui=%s", group, guifg, guibg, gui))
end

M.link = function(groupa, groupb)
    vim.cmd(string.format("highlight link %s %s", groupa, groupb))
end

M.colors = {
    red = "#E06C75",
    dark_red = "#BE5046",
    diff_red = "#2c1517",
    green = "#98C379",
    diff_green = "#1e2718",
    yellow = "#E5C07B",
    diff_yellow = "#3e2e1e",
    dark_yellow = "#D19A66",
    blue = "#61AFEF",
    purple = "#C678DD",
    cyan = "#56B6C2",
    white = "#ABB2BF",
    black = "#1f1f1f",
    dimm_black = "#1c1c1c",
    dark_black = "#1a1a1a",
    comment_grey = "#5C6370",
    gutter_fg_grey = "#4B5263",
    cursor_grey = "#2C323C",
    visual_grey = "#3E4452",
    special_grey = "#3B4048",
    bracket_grey = "#7C828C"
}

M.setup = function()
    vim.g.colors_name = "onedark"
    vim.cmd [[highlight clear]]
    vim.cmd [[syntax reset]]

    M.highlight("Comment", {fg = M.colors.comment_grey, gui = "italic,bold"})
    M.highlight("Constant", {fg = M.colors.cyan})
    M.highlight("String", {fg = M.colors.green, gui = "italic"})
    M.highlight("Character", {fg = M.colors.green})
    M.highlight("Number", {fg = M.colors.dark_yellow})
    M.highlight("Boolean", {fg = M.colors.dark_yellow})
    M.highlight("Float", {fg = M.colors.dark_yellow})
    M.highlight("Identifier", {fg = M.colors.red})
    M.highlight("Function", {fg = M.colors.blue})
    M.highlight("Statement", {fg = M.colors.purple})
    M.highlight("Conditional", {fg = M.colors.purple})
    M.highlight("Repeat", {fg = M.colors.purple})
    M.highlight("Label", {fg = M.colors.purple})
    M.highlight("Operator", {fg = M.colors.purple})
    M.highlight("Keyword", {fg = M.colors.red})
    M.highlight("Exception", {fg = M.colors.purple})
    M.highlight("PreProc", {fg = M.colors.yellow})
    M.highlight("Include", {fg = M.colors.blue})
    M.highlight("Define", {fg = M.colors.purple})
    M.highlight("Macro", {fg = M.colors.purple})
    M.highlight("PreCondit", {fg = M.colors.yellow})
    M.highlight("Type", {fg = M.colors.yellow})
    M.highlight("StorageClass", {fg = M.colors.yellow})
    M.highlight("Structure", {fg = M.colors.yellow})
    M.highlight("Typedef", {fg = M.colors.yellow})
    M.highlight("Special", {fg = M.colors.blue})
    M.highlight("SpecialChar", {})
    M.highlight("Tag", {})
    M.highlight("Delimiter", {})
    M.highlight("SpecialComment", {fg = M.colors.comment_grey, gui = "italic"})
    M.highlight("Debug", {})
    M.highlight("Underlined", {gui = "underline"})
    M.highlight("Bold", {gui = "bold"})
    M.highlight("CursorWord0", {gui = "bold"})
    M.highlight("CursorWord1", {gui = "bold"})
    M.highlight("Ignore", {})
    M.highlight("Error", {fg = M.colors.dark_red})
    M.highlight("Todo", {fg = M.colors.purple})

    M.highlight("ColorColumn", {bg = M.colors.dark_black})
    M.highlight("Conceal", {})
    M.highlight("Cursor", {fg = M.colors.black, bg = M.colors.blue})
    M.highlight("CursorIM", {})
    M.highlight("CursorColumn", {bg = M.colors.dark_black})
    M.highlight("CursorLine", {bg = M.colors.dark_black})
    M.highlight("Directory", {fg = M.colors.blue})
    M.highlight("DiffAdd", {bg = M.colors.diff_green})
    M.highlight("DiffChange", {})
    M.highlight("DiffDelete", {bg = M.colors.diff_red, fg = M.colors.black})
    M.highlight("DiffText", {bg = M.colors.diff_yellow})
    M.highlight("ErrorMsg", {fg = M.colors.red})
    M.highlight("VertSplit", {fg = M.colors.dark_black, bg = M.colors.dark_black})
    M.highlight("Folded", {fg = M.colors.comment_grey, bg = M.colors.dimm_black})
    M.highlight("FoldColumn", {})
    M.highlight("SignColumn", {})
    M.highlight("IncSearch", {fg = M.colors.comment_grey, bg = M.colors.green})
    M.highlight("LineNr", {fg = M.colors.gutter_fg_grey})
    M.highlight("CursorLineNr", {fg = M.colors.green})
    M.highlight("MatchParen", {fg = M.colors.blue, gui = "underline"})
    M.highlight("ModeMsg", {})
    M.highlight("MoreMsg", {})
    M.highlight("NonText", {fg = M.colors.special_grey})
    M.highlight("Normal", {fg = M.colors.white})
    M.highlight("Pmenu", {bg = M.colors.dark_black})
    M.highlight("PmenuSel", {fg = M.colors.black, bg = M.colors.green})
    M.highlight("PmenuSbar", {bg = M.colors.special_grey})
    M.highlight("PmenuThumb", {bg = M.colors.white})
    M.highlight("Question", {fg = M.colors.purple})
    M.highlight("Search", {fg = M.colors.black, bg = M.colors.comment_grey})
    M.highlight("ESearchMatch", {fg = M.colors.black, bg = M.colors.comment_grey})
    M.highlight("QuickFixLine", {gui = "bold"})
    M.highlight("SpecialKey", {fg = M.colors.special_grey})
    M.highlight("SpellBad", {gui = "underline"})
    M.highlight("SpellCap", {gui = "underline"})
    M.highlight("SpellLocal", {gui = "underline"})
    M.highlight("SpellRare", {gui = "underline"})
    M.highlight("StatusLine", {fg = M.colors.white, bg = M.colors.dark_black})
    M.highlight("StatusLineNC", {fg = M.colors.comment_grey, bg = M.colors.dark_black})
    M.highlight("TabLine", {fg = M.colors.comment_grey})
    M.highlight("TabLineFill", {})
    M.highlight("TabLineSel", {fg = M.colors.white})
    M.highlight("Title", {fg = M.colors.green})
    M.highlight("Visual", {fg = M.colors.visual_black, bg = M.colors.visual_grey})
    M.highlight("VisualNOS", {bg = M.colors.visual_grey})
    M.highlight("WarningMsg", {fg = M.colors.yellow})
    M.highlight("WildMenu", {fg = M.colors.black, bg = M.colors.blue})
    M.highlight("WinNormalNC", {bg = M.colors.dark_black})
    M.highlight("HighlightedyankRegion", {bg = M.colors.comment_grey})

    --- Languages

    -- Markdown
    M.highlight("markdownCode", {fg = M.colors.yellow})
    M.highlight("markdownCodeBlockBG", {bg = M.colors.dimm_black})
    M.highlight("markdownCodeBlockBGBorder", {bg = M.colors.dark_black})
    M.highlight("markdownCodeBlockBGBorderSign", {fg = M.colors.gutter_fg_grey})
    M.highlight("markdownCodeBlock", {fg = M.colors.yellow})
    M.highlight("markdownCodeDelimiter", {fg = M.colors.cursor_grey})
    M.highlight("markdownHeadline", {bg = M.colors.cursor_grey})
    M.highlight("markdownFirstHeadline", {bg = M.colors.diff_green})
    M.highlight("markdownSecondHeadline", {bg = M.colors.diff_yellow})
    M.highlight("markdownHeadingDelimiter", {fg = M.colors.gutter_fg_grey})
    M.highlight("markdownRule", {fg = M.colors.comment_grey})
    M.highlight("markdownHeadingRule", {fg = M.colors.comment_grey})
    M.highlight("markdownH1", {fg = M.colors.green, gui = "bold,italic"})
    M.highlight("markdownH2", {fg = M.colors.yellow, gui = "bold,italic"})
    M.highlight("markdownH3", {fg = M.colors.green, gui = "bold,italic"})
    M.highlight("markdownH4", {fg = M.colors.green, gui = "bold,italic"})
    M.highlight("markdownH5", {fg = M.colors.green, gui = "bold,italic"})
    M.highlight("markdownH6", {fg = M.colors.green, gui = "bold,italic"})
    M.highlight("markdownIdDelimiter", {fg = M.colors.purple})
    M.highlight("markdownId", {fg = M.colors.purple})
    M.highlight("markdownBlockquote", {fg = M.colors.comment_grey})
    M.highlight("markdownItalic", {gui = "italic"})
    M.highlight("markdownBold", {fg = M.colors.dark_yellow, gui = "bold"})
    M.highlight("markdownListMarker", {fg = M.colors.red})
    M.highlight("markdownOrderedListMarker", {fg = M.colors.red})
    M.highlight("markdownIdDeclaration", {fg = M.colors.blue})
    M.highlight("markdownLinkText", {fg = M.colors.blue})
    M.highlight("markdownLinkDelimiter", {fg = M.colors.white})
    M.highlight("markdownUrl", {fg = M.colors.purple})

    --- Treesitter
    -- Misc
    M.highlight("TSError", {fg = M.colors.red})
    M.highlight("TSPunctDelimiter", {fg = M.colors.bracket_grey})
    M.highlight("TSPunctBracket", {fg = M.colors.bracket_grey})
    M.highlight("TSPunctSpecial", {fg = M.colors.bracket_grey})

    -- -- Constants
    -- -- M.highlight("TSConstant", {})
    M.highlight("TSConstBuiltin", {fg = M.colors.dark_yellow, gui = "bold"})
    -- -- Not sure about this guy
    -- M.highlight("TSConstMacro", {})
    -- M.highlight("TSString", {})
    -- M.highlight("TSStringRegex", {})
    M.highlight("TSStringEscape", {fg = M.colors.yellow})
    -- M.highlight("TSCharacter", {})
    -- M.highlight("TSNumber", {})
    -- M.highlight("TSBoolean", {})
    -- M.highlight("TSFloat", {})
    -- M.highlight("TSAnnotation", {})
    -- M.highlight("TSAttribute", {})
    -- M.highlight("TSNamespace", {})

    -- -- Functions
    M.highlight("TSFuncBuiltin", {fg = M.colors.dark_yellow, gui = "bold"})
    -- M.highlight("TSFunction", {})
    -- M.highlight("TSFuncMacro", {})
    -- M.highlight("TSParameter", {})
    -- M.highlight("TSParameterReference", {})
    -- M.highlight("TSMethod", {})
    -- M.highlight("TSField", {})
    -- M.highlight("TSProperty", {})
    M.highlight("TSConstructor", {fg = M.colors.red, gui = "bold"})

    -- -- Keywords
    -- M.highlight("TSConditional", {})
    -- M.highlight("TSRepeat", {})
    -- M.highlight("TSLabel", {})
    -- M.highlight("TSKeyword", {})
    -- M.highlight("TSKeywordFunction", {})
    -- M.highlight("TSKeywordOperator", {})
    -- M.highlight("TSOperator", {})
    -- M.highlight("TSException", {})
    -- M.highlight("TSType", {})
    M.highlight("TSTypeBuiltin", {fg = M.colors.dark_yellow, gui = "bold"})
    -- M.highlight("TSStructure", {})
    -- M.highlight("TSInclude", {})

    -- -- Variable
    -- M.highlight("TSVariable", {})
    M.highlight("TSVariableBuiltin", {fg = M.colors.dark_yellow, gui = "bold"})

    -- -- Text
    -- M.highlight("TSText", {})
    -- M.highlight("TSStrong", {})
    -- M.highlight("TSEmphasis", {})
    -- M.highlight("TSUnderline", {})
    -- M.highlight("TSTitle", {})
    -- M.highlight("TSLiteral", {})
    -- M.highlight("TSURI", {})

    -- -- Tags
    -- M.highlight("TSTag", {})
    -- M.highlight("TSTagDelimiter", {})

    --- Plugins
    M.highlight("illuminatedWord", {gui = "bold"})

    M.highlight("diffAdded", {fg = M.colors.green})
    M.highlight("diffRemoved", {fg = M.colors.red})
    M.highlight("gitcommitComment", {fg = M.colors.gutter_fg_grey, gui = "italic,bold"})
    M.highlight("gitcommitUnmerged", {fg = M.colors.green})
    M.highlight("gitcommitOnBranch", {})
    M.highlight("gitcommitBranch", {fg = M.colors.purple})
    M.highlight("gitcommitDiscardedType", {fg = M.colors.red})
    M.highlight("gitcommitSelectedType", {fg = M.colors.green})
    M.highlight("gitcommitHeader", {})
    M.highlight("gitcommitUntrackedFile", {fg = M.colors.cyan})
    M.highlight("gitcommitDiscardedFile", {fg = M.colors.red})
    M.highlight("gitcommitSelectedFile", {fg = M.colors.green})
    M.highlight("gitcommitUnmergedFile", {fg = M.colors.yellow})
    M.highlight("gitcommitFile", {})
    M.highlight("gitcommitSummary", {fg = M.colors.white})
    M.highlight("gitcommitOverflow", {fg = M.colors.red})

    M.highlight("Defx_git_Untracked", {fg = M.colors.red})
    M.link("Defx_git_4_Untracked", "gitcommitUntrackedFile")
    M.link("Defx_git_4_Ignored", "gitcommitSummary")
    M.link("Defx_git_4_Unknown", "gitcommitSummary")
    M.link("Defx_git_4_Renamed", "gitcommitBranch")
    M.link("Defx_git_4_Modified", "gitcommitUnmergedFile")
    M.link("Defx_git_4_Unmerged", "diffRemoved")
    M.link("Defx_git_4_Deleted", "diffRemoved")
    M.link("Defx_git_4_Staged", "diffAdded")

    M.highlight("VimwikiHR", {fg = M.colors.yellow})
    M.highlight("VimwikiPre", {fg = M.colors.cursor_grey})
    M.highlight("VimwikiItalic", {gui = "italic"})
    M.highlight("VimwikiColorTagRed", {fg = M.colors.red})
    M.highlight("VimwikiColorTagCyan", {fg = M.colors.cyan})
    M.highlight("VimwikiColorTagGreen", {fg = M.colors.green})
    M.highlight("VimwikiColorTagBlue", {fg = M.colors.blue})
    M.highlight("VimwikiColorTagPurple", {fg = M.colors.purple})
    M.highlight("VimwikiDate", {fg = M.colors.dark_yellow, gui = "bold"})
    M.highlight("VimwikiHeaderChar", {fg = M.colors.comment_grey})
    M.highlight("VimwikiHeader1", {fg = M.colors.green, gui = "bold"})
    M.highlight("VimwikiHeader2", {fg = M.colors.yellow, gui = "bold"})
    M.highlight("VimwikiHeader3", {fg = M.colors.green, gui = "bold"})
    M.highlight("VimwikiHeader4", {fg = M.colors.green, gui = "bold"})
    M.highlight("VimwikiHeader5", {fg = M.colors.green, gui = "bold"})
    M.highlight("VimwikiHeader6", {fg = M.colors.green, gui = "bold"})

    M.highlight("IndentGuide", {fg = M.colors.cursor_grey})

    M.highlight("Whitespace", {fg = M.colors.cursor_grey})

    M.link("gwitcommitNoBranch", "gitcommitBranch")
    M.link("gitcommitUntracked", "gitcommitComment")
    M.link("gitcommitDiscarded", "gitcommitComment")
    M.link("gitcommitSelected", "gitcommitComment")
    M.link("gitcommitDiscardedArrow", "gitcommitDiscardedFile")
    M.link("gitcommitSelectedArrow", "gitcommitSelectedFile")
    M.link("gitcommitUnmergedArrow", "gitcommitUnmergedFile")

    M.link("gitmessengerPopupNormal", "WinNormalNC")

    M.highlight("GitGutterAdd", {fg = M.colors.green})
    M.highlight("GitGutterChange", {fg = M.colors.purple})
    M.highlight("GitGutterDelete", {fg = M.colors.red})

    M.highlight("EchoDocFloat", {bg = M.colors.dark_black})

    M.highlight("LspDiagnosticsDefaultError", {fg = M.colors.dark_red, gui = "bold"})
    M.highlight("LspDiagnosticsDefaultWarning", {fg = M.colors.purple, gui = "bold"})
    M.highlight("LspDiagnosticsDefaultInformation", {fg = M.colors.cyan, gui = "bold"})
    M.highlight("LspDiagnosticsDefaultHint", {fg = M.colors.comment_grey, gui = "bold"})
    M.highlight("LspDiagnosticsUnderlineError", {fg = M.colors.dark_red, gui = "underline"})
    M.highlight("LspDiagnosticsUnderlineWarning", {fg = M.colors.purple, gui = "underline"})
    M.highlight("LspDiagnosticsUnderlineInformation", {fg = M.colors.cyan, gui = "underline"})
    M.highlight("LspDiagnosticsUnderlineHint", {fg = M.colors.comment_grey, gui = "underline"})

    M.highlight("TSDefinitionUsage", {gui = "bold"})
    M.highlight("TSDefinition", {gui = "bold"})
end

return M
