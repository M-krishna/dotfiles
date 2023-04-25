function map(mode, lhs, rhs, opts)
	-- short function for key mapping
	local options = {noremap = true}
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- Vim keymaps
vim.g.mapleader = " "


-- keymaps for write file, quit file and source file
map('n', '<leader>w', ':w<CR>')
map('n', '<leader>q', ':q!<CR>')
map('n', '<leader>s', ':so %<CR>')

-- move around code blocks or a single line of code in normal mode and visual mode
map('n', 'K', ':m .-2<CR>==') 
map('n', 'J', ':m .+1<CR>==') 
map('v', 'K', ':m \'<-2<CR>gv=gv')
map('v', 'J', ':m \'>+1<CR>gv=gv')

-- keymaps for switching and opening tabs
map('n', '<leader>nt', ':tabnext<CR>')
map('n', '<leader>Nt', ':tabnew<CR>')


-- Language specific keymap

-- Python
map('n', 'py', ':!python3 %<CR>')
