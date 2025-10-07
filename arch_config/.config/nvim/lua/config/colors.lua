vim.cmd.colorscheme("onedark")
local bg = "#1b1b1b"

vim.api.nvim_set_hl(0, "Normal",      { bg = bg })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = bg })
vim.api.nvim_set_hl(0, "SignColumn",  { bg = bg })

vim.api.nvim_set_hl(0, "NvimTreeNormal",     { bg = bg })
vim.api.nvim_set_hl(0, "NvimTreeNormalNC",   { bg = bg })
vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer",{ bg = bg })
vim.api.nvim_set_hl(0, "NvimTreeSignColumn", { bg = bg })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit",  { bg = bg })
