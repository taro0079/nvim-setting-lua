return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {'easymotion/vim-easymotion'}
	use {'tpope/vim-rails'}
	use {'EdenEast/nightfox.nvim'}
	use {'hoob3rt/lualine.nvim',
	config = function()
					require("plugins.lualine")
	end }
end)
