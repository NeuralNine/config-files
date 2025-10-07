-- Syntax highlighting
return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },  -- Lazy loading
	build = ":TSUpdate",  -- Ensure parsers up to date
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require('nvim-treesitter.configs')

		treesitter.setup({
			auto_install = true,  -- Automatically install parsers for missing languages
			sync_install = false,  -- Disable synchronous parser installation to avoid blocking
			-- Enable highlighting, indenting, auto-tagging based on tree-sitter
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			autotag = { enable = true },
			-- Parsers for specific languages
			ensure_installed = {
				'json',
				'javascript',
				'yaml',
				'html',
				'css',
				'markdown',
				'markdown_inline',
				'bash',
				'lua',
				'vim',
				'dockerfile',
				'python',
				'gitignore',
				'c',
			},
			ignore_install = {},
			-- Incremental and decremental selection (C-Space and BS)
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = '<C-Space>',
					node_incremental = '<C-Space>',
					scope_incremental = false,
					node_decremental = '<bs>',
				},
			},
		})
	end,
}

