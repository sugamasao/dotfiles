vim.api.nvim_set_keymap('n', '<C-n>', ':Fern . -reveal=% -drawer -toggle<CR>', { noremap = true, silent = true })
vim.cmd([[
let g:fern#renderer = 'nerdfont'
]])