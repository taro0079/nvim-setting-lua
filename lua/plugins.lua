return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- colorscheme
	use {'EdenEast/nightfox.nvim'}

	use {'hoob3rt/lualine.nvim',
	config = function()
					require("plugins.lualine")
	end }

	-- fuzzy finder
	use {'nvim-telescope/telescope.nvim',
	requires = { { 'nvim-lua/plenary.nvim' }},
	config = function() require('plugins.telescope') end
	}
	
	-- treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate", config = function() require('plugins.tree-sitter') end }

	-- languages
	use {'tpope/vim-rails'}

	-- tools
	use {'vim-skk/skkeleton', requires = { 'vim-denops/denops.vim' }, config = function() require('plugins.skkeleton') end }
	use {'delphinus/skkeleton_indicator.nvim', config = function() require('skkeleton_indicator').setup{} end }

	-- assist moving cursor
	use {'easymotion/vim-easymotion'}

	-- git 
	use { 'tanvirtin/vgit.nvim', requires = { 'nvim-lua/plenary.nvim' }, config = function() require 'plugins.vgit' end }
	use { 'TimUntersberger/neogit', config = function() require 'plugins.neogit' end }
end)
