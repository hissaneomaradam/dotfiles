vim.opt.termguicolors = true
vim.opt.background = "dark"

require("mini.base16").setup({
  palette = {
    base00 = "#111018", -- Background
    base01 = "#191620", -- Darker surface
    base02 = "#302936", -- Selection
    base03 = "#827681", -- Muted
    base04 = "#B99AC8", -- Wisteria
    base05 = "#E9D9D5", -- Cream
    base06 = "#F0C5CE", -- Petal
    base07 = "#FFF1EF", -- Bright foreground

    base08 = "#C97986", -- Red / errors
    base09 = "#D9A477", -- Warm orange
    base0A = "#D995A6", -- Sakura
    base0B = "#A8B99A", -- Moss / strings
    base0C = "#91B9B5", -- Muted teal
    base0D = "#B99AC8", -- Wisteria / functions
    base0E = "#D995A6", -- Pink / keywords
    base0F = "#A77E91", -- Deep rose
  },

  use_cterm = true,
})

-- Editor interface
local hl = vim.api.nvim_set_hl

hl(0, "Normal", { fg = "#E9D9D5", bg = "#111018" })
hl(0, "NormalFloat", { fg = "#E9D9D5", bg = "#191620" })
hl(0, "CursorLine", { bg = "#191620" })
hl(0, "LineNr", { fg = "#625966" })
hl(0, "CursorLineNr", { fg = "#D995A6", bold = true })
hl(0, "Visual", { bg = "#302936" })
hl(0, "Search", { fg = "#111018", bg = "#D995A6" })
hl(0, "IncSearch", { fg = "#111018", bg = "#F0C5CE" })
hl(0, "Pmenu", { fg = "#E9D9D5", bg = "#191620" })
hl(0, "PmenuSel", { fg = "#111018", bg = "#D995A6" })
hl(0, "FloatBorder", { fg = "#B99AC8", bg = "#191620" })
hl(0, "WinSeparator", { fg = "#302936" })
hl(0, "MatchParen", { fg = "#F0C5CE", bold = true })

vim.g.colors_name = "sakura"
