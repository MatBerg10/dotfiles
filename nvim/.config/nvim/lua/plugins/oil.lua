return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
			default_file_explorer = true,
			show_hidden = true
		},

		keys = {
			{ "-", "<CMD>Oil<CR>", { desc = "Open oil.nvim parent directory" }, },
		}
}
