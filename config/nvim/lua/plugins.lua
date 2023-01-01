vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'neoclide/coc.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 
      { 'kyazdani42/nvim-web-devicons', opt = false },
      { 'RRethy/nvim-base16', opt = false }
    }
  }
  use {
    'lambdalisue/fern.vim',
    requires = {
      { 'yuki-yano/fern-preview.vim', opt = false },
      { 'lambdalisue/fern-git-status.vim', opt = false },
      { 'lambdalisue/nerdfont.vim', opt = false },
      { 'lambdalisue/fern-renderer-nerdfont.vim', opt = false }
    }
  }
end)
