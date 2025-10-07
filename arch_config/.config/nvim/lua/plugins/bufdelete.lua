return {
	'famiu/bufdelete.nvim',
	config = function()
		vim.keymap.set('n', '<C-q>', '<cmd>Bdelete<cr>', { noremap = true, silent = true })
	end
}
