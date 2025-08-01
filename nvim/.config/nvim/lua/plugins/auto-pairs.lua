return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	opts = {
		check_ts = true,
		disable_in_macro = true,
		disable_in_visualblock = true,
		enable_afterquote = true,         -- add bracket pairs after quote
		enable_check_bracket_line = true, --- check bracket in same line
		enable_bracket_in_quote = true,
	},
}
