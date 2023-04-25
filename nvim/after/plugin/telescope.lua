-- Telescope keymaps
local builtin = require('telescope.builtin')
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<C-s>', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')
