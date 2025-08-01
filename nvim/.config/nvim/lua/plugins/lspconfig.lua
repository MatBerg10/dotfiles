return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ensure_installed = {
					"ast_grep",
					"bacon",
					"bacon_ls",
					"biome",
					"checkmake",
					"cmakelang",
					"cmakelint",
					"codespell",
					"cpplint",
					"htmlhint",
					"jsonlint",
					"pylint",
					"shellharden",
					"standardjs",
					"standardts",
					"write_good",

					"asmfmt",
					"black",
					"clang_format",
					"csharpier",
					"goimports",
					"golines",
					"isort",
					"jq",
					"prettier",
					"prettierd",
					"rustfmt",
					"shfmt",
					"stylua",
				},
			})
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"asm_lsp",
					"ast_grep",
					"bashls",
					"biome",
					"clangd",
					"cssls",
					"gopls",
					"harper_ls",
					"html",
					"jdtls",
					"jsonls",
					"lua_ls",
					"markdown_oxide",
					"neocmake",
					"omnisharp",
					"pylsp",
					"rust_analyzer",
					"tailwindcss",
					"ts_ls",
				},
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.asm_lsp.setup({
				cmd = {"asm_lsp"},
				capabilities = capabilities,
				filetypes = {"asm", "s", "S"},
			})
			lspconfig.ast_grep.setup({
				cmd = {"ast_grep"},
				capabilities = capabilities,
				filetypes = {"c", "cpp", "rs", "go", "java", "py", "cs", "js", "jsx", "ts", "html", "css", "kt", "dart", "lua" }
			})
			lspconfig.bashls.setup({
				cmd = {"bashls"},
				capabilities = capabilities,
				filetypes = {"sh"},
			})
			lspconfig.biome.setup({
				cmd = {"biome"},
				capabilities = capabilities,
				filetypes = {"json", "js", "ts"},
			})
			lspconfig.clangd.setup({
				cmd = {"clangd"},
				capabilities = capabilities,
				filetypes = {"c", "cpp"},
			})
			lspconfig.cssls.setup({
				cmd = {"cssls"},
				capabilities = capabilities,
				filetypes = {"css", "less", "scss"},
			})
			lspconfig.gopls.setup({
				cmd = {"gopls"},
				capabilities = capabilities,
				filetypes = {"go"},
			})
			lspconfig.harper_ls.setup({
				capabilities = capabilities,
				filetypes = {"md", "rs", "ts", "js", "py", "go", "c", "cpp", "rb", "cs", "toml", "lua", "java" },
			})
			lspconfig.html.setup({
				-- cmd = {"html"},
				capabilities = capabilities,
				filetypes = {},
			})
			lspconfig.jdtls.setup({
				cmd = {"jdtls"},
				capabilities = capabilities,
				filetypes = {"java"},
			})
			lspconfig.jsonls.setup({
				cmd = {"jsonls"},
				capabilities = capabilities,
				filetypes = {"json"},
			})
			lspconfig.lua_ls.setup({
				-- cmd = {"lua_ls"},
				capabilities = capabilities,
				filetypes = {"lua"},
			})
			lspconfig.markdown_oxide.setup({
				cmd = {"markdown_oxide"},
				capabilities = capabilities,
				filetypes = {"md"},
			})
			lspconfig.neocmake.setup({
				cmd = {"neocmake"},
				capabilities = capabilities,
			})
			lspconfig.omnisharp.setup({
				cmd = {"omnisharp"},
				capabilities = capabilities,
				filetypes = {"cs"},
			})
			lspconfig.pylsp.setup({
				cmd = {"pylsp"},
				capabilities = capabilities,
				filetypes = {"py"},
			})
			lspconfig.tailwindcss.setup({
				cmd = {"tailwindcss"},
				capabilities = capabilities,
				filetypes = {"css"},
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
			lspconfig.ts_ls.setup({
				cmd = {"ts_ls"},
				capabilities = capabilities,
				filetypes = {"ts", "js"},
			})
		end
	},

	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.diagnostics.ast_grep,
					null_ls.builtins.diagnostics.bacon,
					null_ls.builtins.diagnostics.bacon_ls,
					null_ls.builtins.diagnostics.biome,
					null_ls.builtins.diagnostics.checkmake,
					null_ls.builtins.diagnostics.cmakelang,
					null_ls.builtins.diagnostics.cmakelint,
					null_ls.builtins.diagnostics.codespell,
					null_ls.builtins.diagnostics.cpplint,
					null_ls.builtins.diagnostics.htmlhint,
					null_ls.builtins.diagnostics.jsonlint,
					null_ls.builtins.diagnostics.pylint,
					null_ls.builtins.diagnostics.rstcheck,
					null_ls.builtins.diagnostics.shellharden,
					null_ls.builtins.diagnostics.standardjs,
					null_ls.builtins.diagnostics.standardts,
					null_ls.builtins.diagnostics.stylelint,
					null_ls.builtins.diagnostics.write_good,

					null_ls.builtins.formatting.asmfmt,
					null_ls.builtins.formatting.ast_grep,
					null_ls.builtins.formatting.biome,
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.clang_format,
					null_ls.builtins.formatting.cmakelang,
					null_ls.builtins.formatting.csharpier,
					null_ls.builtins.formatting.goimports,
					null_ls.builtins.formatting.golines,
					null_ls.builtins.formatting.isort,
					null_ls.builtins.formatting.jq,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.prettierd,
					null_ls.builtins.formatting.rustfmt,
					null_ls.builtins.formatting.shellharden,
					null_ls.builtins.formatting.shfmt,
					null_ls.builtins.formatting.standardjs,
					null_ls.builtins.formatting.standardts,
					null_ls.builtins.formatting.stylua,

					-- null_ls.builtins .. stylua,
				},
			})
		end,
	},
}
