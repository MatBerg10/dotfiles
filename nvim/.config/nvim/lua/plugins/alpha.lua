return
{
	'goolord/alpha-nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require 'alpha'.setup(require 'themes.startify'.config)
		width = 1920
		height = 1080
	end
}
