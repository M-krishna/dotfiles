-- Packer config
return require('packer').startup(function(use)
	-- Needed for packer setup
	use 'wbthomason/packer.nvim'

	-- For the beautiful status line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- dev icons needed for other packages
	use 'kyazdani42/nvim-web-devicons'

	-- Telescope for find files
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = {{'nvim-lua/plenary.nvim'}}
	}
	
	-- Colorscheme
	use 'Mofiqul/dracula.nvim'

	-- File explorer
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require("nvim-tree").setup ({
				filters = {
					dotfiles = false,
				},
			})
		end
	}


	-- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	-- Markdown preview
	-- Do the following steps to install this properly
	-- For mac:
	-- cd ~/.local/share/nvim/site/pack/packer/start/
	-- git clone https://github.com/iamcco/markdown-preview.nvim.git
	-- cd markdown-preview.nvim
	-- yarn install
	-- yarn build
	-- Open nvim and run :PackerInstall or :PackerSync
	use {'iamcco/markdown-preview.nvim'}
end)

-- NOTE:
-- After install telescope, run :checkhealth telescope to see what are all the missing
-- things and install it
