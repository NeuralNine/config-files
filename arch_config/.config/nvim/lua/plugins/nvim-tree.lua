return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvim_tree = require("nvim-tree")
    local api = require("nvim-tree.api")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvim_tree.setup({
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
        update_root = true,
      },
    })

    -- Toggle the tree with <leader>e
    vim.keymap.set("n", "<leader>e", function()
      api.tree.toggle({ find_file = true, update_root = true, focus = true })
    end, { noremap = true, silent = true })

    -- Open file in a vertical split with <leader>v
    vim.keymap.set("n", "<leader>v", function()
      api.node.open.vertical()
    end, { noremap = true, silent = true })

    -- Open file in a horizontal split with <leader>h
    vim.keymap.set("n", "<leader>h", function()
      api.node.open.horizontal()
    end, { noremap = true, silent = true })
  end,
}

