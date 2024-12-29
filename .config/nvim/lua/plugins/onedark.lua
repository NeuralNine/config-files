-- One Dark theme
return {
	"navarasu/onedark.nvim",
	config = function()
		require("onedark").setup({
			style = "dark",
		})
		require("onedark").load()
	end
}
