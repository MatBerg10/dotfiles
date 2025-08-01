return {
	"NvChad/nvterm",
	opts = {
			terminals = {
				shell = vim.o.shell,
				list = {},
				type_opts = {
					float = {
						relative = "editor",
						row = 0.3,
						col = 0.25,
						width = 0.5,
						height = 0.4,
						border = "single",
					},
					horizontal = { location = "rightbelow", split_ratio = 0.3 },
					vertical = { location = "rightbelow", split_ratio = 0.5 },
				},
			},
			behavior = {
				autoclose_on_quit = {
					enabled = true,
					confirm = false,
				},
				close_on_exit = true,
				auto_insert = true,
			},
		},

	keys = {
		{ "<leader>th",
			function()
				local bufferDir = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":p:h")

				require("nvterm.terminal").send('cd "' .. bufferDir .. '" && clear', "horizontal")
			end
		},

		{
			"<leader>tv",
			function()
				local bufferDir = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":p:h")

				require("nvterm.terminal").send('cd "' .. bufferDir .. '" && clear', "vertical")
			end
		},

		{ "<leader>tf", function()
			local bufferPath = vim.api.nvim_buf_get_name(0)
			local bufferDir = vim.fn.fnamemodify(bufferPath, ":p:h")

			require("nvterm.terminal").send('cd "' .. bufferDir .. '" && clear', "float")
		end
		},
	}
}
