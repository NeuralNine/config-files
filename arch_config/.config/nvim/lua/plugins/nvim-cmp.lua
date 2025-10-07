-- Autocomplete plugin
return {
	'hrsh7th/nvim-cmp',
	event = 'InsertEnter',  -- Plugin loaded when insert mode entered
	dependencies = {
		"hrsh7th/cmp-buffer",  -- Completion source for text in current buffer
		"hrsh7th/cmp-path",  -- Completion source for file paths
		{
			"L3MON4D3/LuaSnip",  -- Snippet engine for Lua
			version = "v2.*",  -- Specific version to use
			build = "make install_jsregexp",  -- Advances snippet matching
		},
		"saadparwaiz1/cmp_luasnip",  -- Integration between nvim-cmp and LuaSnip
		"rafamadriz/friendly-snippets",  -- Collection of pre-defined snippets
		"onsails/lspkind.nvim",  -- Adds icons to completion items for better visual context
		"hrsh7th/cmp-nvim-lsp",  -- Enables completion from LSP servers
		"hrsh7th/cmp-nvim-lsp-signature-help",  -- Adds signature help (function arguments) in completion popups
	},
	config = function()
		local cmp = require('cmp')
		local luasnip = require('luasnip')
		local lspkind = require('lspkind')

		cmp.setup({
			completion = {
				completeopt = 'menu,menuone,preview',
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)  -- Use LuaSnip for expanding snippets
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<Tab>'] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end, { "i", "s" }),
				['<Enter>'] = cmp.mapping.confirm({ select = true }),
			}),
			-- Enable completions from above
			sources = cmp.config.sources({
				{ name = 'nvim_lsp_signature_help' },
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'buffer' },
				{ name = 'path' },
			}),
		})

		require("luasnip.loaders.from_vscode").lazy_load()  -- Load snippets
	end,
}
