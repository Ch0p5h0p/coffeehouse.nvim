local lush = require('lush')
local hsl = lush.hsl

local palette = require('coffeehouse.palette')

return function(flavor)
    local t = palette[flavor]
    local theme = lush(function(injected_functions)
        local sym = injected_functions.sym
        return {
            -- Editor
            Normal { bg = t.bg, fg = t.fg },
            NormalFloat { bg = t.bg_alt, fg = t.fg },
            FloatBorder { bg = t.bg_alt, fg = t.accent },
            FloatTitle { bg = t.bg_alt, fg = t.accent, gui = "bold" },
            ModeMsg { fg = t.accent, gui = "bold" },

            Cursor { bg = t.accent, fg = t.bg },
            CursorLine { bg = t.bg_alt },
            CursorLineNr { bg = t.bg_alt, fg = t.accent },
            LineNr { fg = t.fg_subtle },
            SignColumn { bg = t.bg },
            ColorColumn { bg = t.bg_alt },
            Visual { bg = t.bg_highlight },
            VisualNOS { bg = t.bg_highlight },

            Search { bg = t.yellow, fg = t.bg },
            IncSearch { bg = t.orange, fg = t.bg },
            CurSearch { bg = t.orange, fg = t.bg },
            MatchParen { bg = t.bg_surface, fg = t.cyan, gui = "bold" },

            Pmenu { bg = t.bg_alt, fg = t.fg },
            PmenuSel { bg = t.bg_highlight, fg = t.fg },
            PmenuSbar { bg = t.bg_surface },
            PmenuThumb { bg = t.accent },

            StatusLine { bg = t.bg_alt, fg = t.fg },
            StatusLineNC { bg = t.bg, fg = t.fg_subtle },
            TabLine { bg = t.bg_alt, fg = t.fg_muted },
            TabLineSel { bg = t.bg_highlight, fg = t.fg },
            TabLineFill { bg = t.bg },

            WinSeparator { fg = t.bg_surface },
            VertSplit { fg = t.bg_surface },
            Folded { bg = t.bg_alt, fg = t.fg_muted },
            FoldColumn { fg = t.fg_subtle },

            NonText { fg = t.bg_surface },
            SpecialKey { fg = t.fg_muted },
            Whitespace { fg = t.bg_surface },
            EndOfBuffer { fg = t.bg },

            Title { fg = t.accent, gui = "bold" },
            Directory { fg = t.blue },
            Conceal { fg = t.fg_muted },

            -- Syntax
            Comment { fg = t.ash },

            Constant { fg = t.dark_orange },
            String { fg = t.green },
            Character { fg = t.green },
            Number { fg = t.purple },
            Boolean { fg = t.purple },
            Float { fg = t.purple },

            Identifier { fg = t.fg },
            Function { fg = t.orange },

            Statement { fg = t.red },
            Conditional { fg = t.red },
            Repeat { fg = t.red },
            Label { fg = t.yellow },
            Operator { fg = t.yellow },
            Keyword { fg = t.red },
            Exception { fg = t.dark_orange },

            PreProc { fg = t.purple },
            Include { fg = t.red },
            Define { fg = t.purple },
            Macro { fg = t.dark_orange },

            Type { fg = t.blue },
            StorageClass { fg = t.red },
            Structure { fg = t.blue },
            Typedef { fg = t.blue },

            Special { fg = t.cyan },
            SpecialChar { fg = t.dark_orange },
            Tag { fg = t.red },
            Delimiter { fg = t.latte },
            SpecialComment { fg = t.yellow },
            Debug { fg = t.dark_orange },

            Underlined { fg = t.cyan, gui = "underline" },
            Ignore { fg = t.ash },
            Error { bg = t.red, fg = t.bg },
            Todo { bg = t.yellow, fg = t.bg, gui = "bold" },

            -- Diagnostics
            DiagnosticError { fg = t.dark_orange },
            DiagnosticWarn { fg = t.yellow },
            DiagnosticInfo { fg = t.blue },
            DiagnosticHint { fg = t.cyan },
            DiagnosticOk { fg = t.green },

            DiagnosticVirtualTextError { fg = t.dark_orange, bg = t.bg_alt },
            DiagnosticVirtualTextWarn { fg = t.yellow, bg = t.bg_alt },
            DiagnosticVirtualTextInfo { fg = t.blue, bg = t.bg_alt },
            DiagnosticVirtualTextHint { fg = t.cyan, bg = t.bg_alt },
            DiagnosticVirtualTextOk { fg = t.green, bg = t.bg_alt },

            DiagnosticUnderlineError { gui = "undercurl", sp = t.dark_orange },
            DiagnosticUnderlineWarn { gui = "undercurl", sp = t.yellow },
            DiagnosticUnderlineInfo { gui = "undercurl", sp = t.blue },
            DiagnosticUnderlineHint { gui = "undercurl", sp = t.cyan },

            -- Diff
            DiffAdd { bg = t.bg_surface, fg = t.green },
            DiffDelete { bg = t.bg_surface, fg = t.dark_orange },
            DiffChange { bg = t.bg_surface, fg = t.blue },
            DiffText { bg = t.bg_highlight, fg = t.yellow },

            -- Treesitter
            sym("@variable") { fg = t.fg },
            sym("@variable.builtin") { fg = t.cyan },
            sym("@variable.parameter") { fg = t.fg },
            sym("@variable.member") { fg = t.cyan },

            sym("@constant") { fg = t.dark_orange },
            sym("@constant.builtin") { fg = t.purple },
            sym("@module") { fg = t.blue },

            sym("@string") { fg = t.green },
            sym("@string.escape") { fg = t.dark_orange },
            sym("@string.special") { fg = t.cyan },
            sym("@character") { fg = t.green },

            sym("@number") { fg = t.purple },
            sym("@boolean") { fg = t.purple },
            sym("@float") { fg = t.purple },

            sym("@function") { fg = t.orange },
            sym("@function.call") { fg = t.orange },
            sym("@function.method") { fg = t.orange },
            sym("@function.builtin") { fg = t.cyan },
            sym("@constructor") { fg = t.blue },

            sym("@keyword") { fg = t.red },
            sym("@keyword.function") { fg = t.red },
            sym("@keyword.operator") { fg = t.yellow },
            sym("@keyword.return") { fg = t.red },
            sym("@conditional") { fg = t.red },
            sym("@repeat") { fg = t.red },
            sym("@exception") { fg = t.dark_orange },

            sym("@type") { fg = t.blue },
            sym("@type.builtin") { fg = t.blue },
            sym("@type.definition") { fg = t.blue },
            sym("@attribute") { fg = t.purple },
            sym("@property") { fg = t.cyan },
            sym("@field") { fg = t.cyan },

            sym("@operator") { fg = t.yellow },
            sym("@punctuation.delimiter") { fg = t.latte },
            sym("@punctuation.bracket") { fg = t.latte },
            sym("@punctuation.special") { fg = t.cyan },

            sym("@comment") { fg = t.ash },
            sym("@comment.todo") {
                bg = t.yellow,
                fg = t.bg,
                gui = "bold"
            },

            -- Snacks.nvim
            SnacksPicker { fg = t.fg, bg = t.bg },
            SnacksPickerMatch { fg = t.accent, bold = true },
            SnacksPickerDir { fg = t.fg_muted },
            SnacksPickerFile { fg = t.fg },
        }
    end)

    require('coffeehouse.lualine')(flavor)

    return theme
end
