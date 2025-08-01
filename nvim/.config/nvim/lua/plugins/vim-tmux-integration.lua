return {
	{
		"christoomey/vim-tmux-navigator",
		cmd = {
			"TmuxNavigateLeft",
			"TmuxNavigateDown",
			"TmuxNavigateUp",
			"TmuxNavigateRight",
			"TmuxNavigatePrevious",
		},
		keys = {
			{ "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
			{ "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
			{ "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
			{ "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
			{ "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
		},
	},

	{
		"RyanMillerC/better-vim-tmux-resizer",
			keys = {
			 "<C-Left>", "<cmd>TmuxResizeLeft<CR>",
			 "<C-Right>", "<cmd>TmuxResizeRight<CR>",
			 "<C-Up>", "<cmd>TmuxResizeUp<CR>",
			 "<C-Down>", "<cmd>TmuxResizeDown<CR>",
			}
	}
}
