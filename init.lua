local set = vim.opt

set.number = true
set.relativenumber = true
set.shiftwidth = true
set.tabstop = 4
set.softtabstop = 0
set.expandtab = false
set.swapfile = false

-- Vim keymaps
vim.g.mapleader = " "

function map(mode, lhs, rhs, opts)
	local options = {noremap = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q!<CR>')
map('n', '<leader>s', ':so %<CR>')


-- Language specific keymaps

-- Python
map('n', 'py', ':!python3 %<CR>'
