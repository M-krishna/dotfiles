function map(mode, lhs, rhs, opts)
	-- short function for key mapping
	local options = {noremap = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Global configs

-- Changing this for nvim-tree(file explorer)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local set = vim.opt

set.number = true
set.relativenumber = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 0
set.expandtab = false
set.swapfile = false
set.termguicolors = true -- for nvim-tree(file explorer)

-- Vim keymaps
vim.g.mapleader = " "


map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q!<CR>')
map('n', '<leader>s', ':so %<CR>')

-- move around code blocks or a single line of code in normal mode and visual mode
map('n', 'K', ':m .-2<CR>==') 
map('n', 'J', ':m .+1<CR>==') 
map('v', 'K', ':m \'<-2<CR>gv=gv')
map('v', 'J', ':m \'>+1<CR>gv=gv')

-- Nvim tree keymaps
map('n', 'tt', ':NvimTreeToggle<CR>')
map('n', 'tf', ':NvimTreeFocus<CR>')
map('n', 'TF', ':NvimTreeFindFile<CR>')
map('n', 'tc', ':NvimTreeCollapse<CR>')


-- Language specific keymap

-- Python
map('n', 'py', ':!python3 %<CR>')

-- Lualine setup
require('lualine').setup()

-- Dracula colorscheme
vim.cmd[[colorscheme dracula]]


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
			require("nvim-tree").setup {}
		end
	}
end)
