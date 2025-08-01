return {
	{
		"nat-418/boole.nvim",
		opts = {
				mappings = {
					increment = '<C-a>',
					decrement = '<C-x>'
				},
				-- User defined loops
				additions = {
				},
				allow_caps_additions = {
					{ 'enable', 'disable' },
					-- enable → disable
					-- Enable → Disable
					-- ENABLE → DISABLE
					{ 'Foo', 'Bar' },
					{ 'tic', 'tac', 'toe' },
					{ 'first', 'second', 'third', 'fourth', 'fifth', 'sixth', 'seventh', 'eight', 'ninth', 'tenth' }
				}
			},
	}
}
