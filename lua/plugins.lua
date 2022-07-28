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
	use { 'rust-lang/rust.vim' }

	-- tools
	use {'vim-skk/skkeleton', requires = { 'vim-denops/denops.vim' }, config = function() require('plugins.skkeleton') end }
	use {'delphinus/skkeleton_indicator.nvim', config = function() require('skkeleton_indicator').setup{} end }
	use { "lukas-reineke/indent-blankline.nvim", config = function() require('plugins.indent-blankline') end } -- show indent
	use { 'haya14busa/vim-edgemotion' }
	use { 't9md/vim-quickhl' } -- for highlighting
	use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end } -- plugin for comment out

  -- fern file explorer
	use { 'lambdalisue/fern.vim' }
	use { 'lambdalisue/fern-git-status.vim' }
	use { 'lambdalisue/nerdfont.vim' }
	use { 'lambdalisue/fern-renderer-nerdfont.vim' }
	use { 'lambdalisue/glyph-palette.vim' }
	use { 'antoinemadec/FixCursorHold.nvim' }

	-- assist moving cursor
	use {'easymotion/vim-easymotion'}

	-- git 
	use { 'tanvirtin/vgit.nvim', requires = { 'nvim-lua/plenary.nvim' }, config = function() require 'plugins.vgit' end }
	use { 'TimUntersberger/neogit', config = function() require 'plugins.neogit' end }

	-- cmp
  use { 'hrsh7th/nvim-cmp', config = function() require 'plugins.cmp' end }
	use 'hrsh7th/cmp-calc'
	use 'hrsh7th/cmp-omni'
	use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
	use { 'hrsh7th/cmp-nvim-lsp-document-symbol' }
	use { 'hrsh7th/cmp-emoji' }
	use { 'uga-rosa/cmp-dictionary', config = function() require 'plugins.dictionary' end }
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'f3fora/cmp-spell'
	use { 'rinx/cmp-skkeleton', after = { 'nvim-cmp', 'skkeleton' } }

  -- LSP系のプラグイン
	use { 'junegunn/vim-emoji' }
	use { 'folke/lsp-colors.nvim' }
	use { 'j-hui/fidget.nvim', config = function() require 'fidget'.setup {} end }
	use { 'RRethy/vim-illuminate' }
	use { 'neovim/nvim-lspconfig', config = function() require 'lsp' end }

	-- snippets
	use { 'quangnguyen30192/cmp-nvim-ultisnips' }
	use { 'SirVer/ultisnips' }
	use { 'honza/vim-snippets' }
	use { 'ray-x/lsp_signature.nvim', config = function() require "lsp_signature".setup() end }
	use 'onsails/lspkind-nvim'
	use { 'williamboman/nvim-lsp-installer' }
end)
