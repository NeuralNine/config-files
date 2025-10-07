-- Managing LSP servers
-- :Mason to install update etc.
return {
	'williamboman/mason.nvim',
	dependencies = {
		'williamboman/mason-lspconfig.nvim',  -- Bridges Mason and nvim-lspconfig
		'WhoIsSethDaniel/mason-tool-installer.nvim',  -- Adds functionality to automatically install non-LSP tools
	},
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		local mason_tool_installer = require('mason-tool-installer')

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			pip = {
				upgrade_pip = true,  -- Update pip when managing Python packages
			}
		})

		mason_lspconfig.setup({
			-- LSP servers to install automatically
			ensure_installed = {
				'lua_ls',
				'html',
				'cssls',
				'pylsp',
				'clangd',
				'rust_analyzer'
			},
		})

		mason_tool_installer.setup({
			-- Non-LSP tools to install automatically
			ensure_installed = {
				'prettier',
				'isort',
			}
		})
	end,
}

