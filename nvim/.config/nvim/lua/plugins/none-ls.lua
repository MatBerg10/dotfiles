return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.asmfmt,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.cmake_format,
				-- null_ls.builtins.formatting.eslint_d,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.goimports_reviser,
				null_ls.builtins.formatting.htmlbeautifier,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.prettierd,
				-- null_ls.builtins.formatting.rustfmt,
				null_ls.builtins.formatting.shellharden,
				null_ls.builtins.formatting.shfmt,
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.formatting.standardjs,
				-- null_ls.builtins.formatting.standardts,
				null_ls.builtins.formatting.tidy,
				null_ls.builtins.formatting.uncrustify,

				-- null_ls.builtins.diagnostics.clang_check,
				-- null_ls.builtins.diagnostics.flake8,
				-- null_ls.builtins.diagnostics.jsonlint,
				-- null_ls.builtins.diagnostics.shellcheck,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.diagnostics.codespell,
				null_ls.builtins.diagnostics.write_good,
			},
		})
	end,
}
