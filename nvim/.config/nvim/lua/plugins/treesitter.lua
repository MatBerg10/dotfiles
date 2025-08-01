return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPre", "BufNewFile" },
	config = function()

		require("nvim-treesitter").setup({
			auto_install = true,
			ensure_installed = { "lua", "python", "c", "cpp", "c_sharp", "rust", "go" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
