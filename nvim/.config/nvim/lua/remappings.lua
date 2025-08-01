vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv-gv=gv", { desc = "Move selection one line downwards" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv-gv=gv", { desc = "Move selection one line upwards" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Keep cursor position when using J to merge line below with current" })

vim.keymap.set(
	"n",
	"<C-d>",
	"<C-d>zz",
	{ desc = "Keep cursor in the middle while using <C-d> (Page Up)", silent = true }
)
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in the middle while using <C-d> (Page Down)" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Keeps cursor in the middle while jumping forward in search" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keeps cursor in the middle while jumping backwards in search" })

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to system clipboard" })

vim.keymap.set(
	"x",
	"<leader>p",
	'"_dP',
	{ desc = "Paste over text and saves it on null register, so you don't lose previous copy" }
)
vim.keymap.set(
	{ "n", "v" },
	"<leader>d",
	'"_d',
	{ desc = "Delete and save on null register, so you don't lose previous copy" }
)

vim.keymap.set("n", "<tab>", "<cmd>bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<S-tab>", "<cmd>bp<CR>", { desc = "Go to previous buffer" })

vim.keymap.set("n", "<leader>t", "<cmd>enew<CR><Esc>", { desc = "Create new tab (buffer)" })
vim.keymap.set("n", "<leader>w", "<cmd>bd!<CR>", { desc = "Delete current tab (buffer)" })
vim.keymap.set("n", "<leader>q", "<cmd>%bd|e<CR>", { desc = "Close all tabs (buffers) but current" })
vim.keymap.set("n", "<leader>l", "<cmd>set hls!<CR>")

vim.keymap.set("n", "gf", vim.lsp.buf.format, {})
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<C-s>", vim.lsp.buf.signature_help, {})
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<leader>nr", vim.lsp.buf.references, {})

vim.keymap.set("n", "<leader>fa", function()
	require("telescope.builtin").find_files({ cwd = "/home" })
end)
vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files({ cwd = vim.fn.expand("%:p:h") })
end)
vim.keymap.set("n", "<leader>fh", function()
	require("telescope.builtin").find_files({ cwd = os.getenv("HOME") })
end)
vim.keymap.set("n", "<leader>fc", function()
	require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
end)
vim.keymap.set("n", "<leader>fd", function()
	require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("data") })
end)
vim.keymap.set("n", "<leader>fg", function()
	require("telescope.builtin").live_grep({ search_dirs = { vim.fn.expand("%:p:h") } })
end)
