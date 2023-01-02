-- Base
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.undofile = false
vim.opt.whichwrap = "b,s,h,l,<,>,[,]"
-- vim.opt.backspace = 'indent,eol,start' -- デフォルトと同じ
-- vim.opt.wildmenu = true -- デフォルトでtrue
vim.opt.wildmode = { 'list:full' }
vim.opt.smartindent = true
vim.opt.scrolloff = 3
vim.opt.clipboard = {
  name = 'myClipboard',
  copy = {
      ["+"] = {'tmux', 'load-buffer', '-'},
      ["*"] = {'tmux', 'load-buffer', '-'},
  },
  paste = {
      ["+"] = {'tmux', 'save-buffer', '-'},
      ["*"] = {'tmux', 'save-buffer', '-'},
  },
  cache_enabled = true,
}

-- 表示
vim.opt.number = true
vim.opt.background = "dark"
vim.opt.cursorline = true
vim.opt.showmode = true
vim.opt.showmatch = true
vim.opt.laststatus = 3
vim.opt.list = true
vim.opt.listchars = { tab = '>.', eol = '↲', trail = '_', extends = '\\' }
vim.opt.cmdheight = 0

-- tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
-- vim.opt.softtabstop = 0 -- デフォルトで0
-- vim.opt.smarttab = true -- デフォルトでtrue
vim.opt.expandtab = true

-- 検索
-- vim.opt.incsearch = true -- デフォルトでtrue
-- vim.opt.hlsearch = true -- デフォルトでtrue
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true
vim.api.nvim_set_keymap('n', '<ESC><ESC>', ':nohlsearch<CR>', { silent = true, noremap = true })

-- plugins
require('plugins')
require('coc')
require('lualine').setup({
  options = { theme = 'gruvbox_light' }
})
require('fern')

require('tokyonight')
vim.cmd[[colorscheme tokyonight-moon]]

require('telescope')
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-g>', '<cmd>lua require("telescope.builtin").live_grep()<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>lua require("telescope.builtin").buffers()<cr>', { noremap = true })

require("bufferline").setup({})
