return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"asmfmt",
				"bacon",
				"bacon_ls",
				"clang_format",
				"cmake_format",
				"cmakelang",
				"cmakelint",
				"codespell",
				"eslint_d",
				"gofumpt",
				"goimports",
				"goimports_reviser",
				"golines",
				"htmlbeautifier",
				"htmlhint",
				"jsonlint",
				"prettier",
				"prettierd",
				"pylint",
				"rustfmt",
				"shellharden",
				"shfmt",
				"standardjs",
				"standardts",
				"stylua",
				"tidy",
				"uncrustify",
			},
		},
	},

	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"asm_lsp",
				"bashls",
				"clangd",
				"cmake",
				"cssls",
				"gopls",
				"harper_ls",
				"html",
				"lua_ls",
				"neocmake",
				"omnisharp",
				"pylsp",
				"rust_analyzer",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			languageServers = {
				"lua_ls",
				"neocmake",
				"omnisharp",
				"html",
			}

			for _, server in ipairs(languageServers) do
				lspconfig[server].setup({
					capabilities = capabilities,
				})
			end

			lspconfig.clangd.setup({
				cmd = { "clangd" },
				filetypes = { "c", "cpp" },
			})

			lspconfig.rust_analyzer.setup({
				settings = {
					["rust_analyzer"] = {
						diagnostics = {
							experimental = {
								enable = true,
							},
						},
					},
				},

				capabilities = capabilities,
			})

			lspconfig.jsonls.setup({
				filetypes = { "json", "mcmeta" },
			})

			lspconfig.tailwindcss.setup({
				filetypes = {"css", "scss", "less"}
			})
		end,
	},
}
