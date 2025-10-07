-- Status line
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local onedark = require('lualine.themes.onedark')

	-- Custom darker color
    -- local darker_gray = '#24262C'
    local darker_gray = '#242424'

    local custom_onedark = vim.tbl_deep_extend("force", onedark, {
      normal = { c = { bg = darker_gray } },
      insert = { c = { bg = darker_gray } },
      visual = { c = { bg = darker_gray } },
      replace = { c = { bg = darker_gray } },
      command = { c = { bg = darker_gray } },
    })

    require("lualine").setup({
      options = {
        theme = custom_onedark
      },
    })
  end
}

