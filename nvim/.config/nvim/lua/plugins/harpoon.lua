return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	opts = {},

	keys = {
			{ "<leader>a", function() require("harpoon.mark").add_file() end },
			{ "<leader>h", function() require("harpoon.ui").toggle_quick_menu() end },
			{ "gh", function() require("harpoon.ui").nav_file(1) end },
			{ "gj", function() require("harpoon.ui").nav_file(2) end },
			{ "gk", function() require("harpoon.ui").nav_file(3) end },
			{ "gl", function() require("harpoon.ui").nav_file(4) end },
			{ "gs", function() require("harpoon.ui").nav_file(5) end },
		}
}
