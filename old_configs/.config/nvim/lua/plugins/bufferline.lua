return {
	'akinsho/bufferline.nvim',
	lazy = false,
	version = '*',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function ()
		local bufferline = require('bufferline')
		bufferline.setup({
			options = {
				persist_buffer_sort = true,
				hover = {
					enabled = true,
					delay = 200,
					reveal = {'close'}
				},
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						highlight = "Directory",
						separator = true,
					}
				}
			}
		})

		local map = vim.keymap.set
		local opts = { noremap = true, silent = true }

		map('n', '<A-Left>', '<cmd>BufferLineCyclePrev<cr>', opts)
		map('n', '<A-Right>', '<cmd>BufferLineCycleNext<cr>', opts)
		map('n', '<A-h>', '<cmd>BufferLineCyclePrev<cr>', opts)
		map('n', '<A-l>', '<cmd>BufferLineCycleNext<cr>', opts)
	end
}

