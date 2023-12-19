local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
      fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
      vim.cmd [[packadd packer.nvim]]
      return true
    end
    return false
  end

local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer not found. Installing Packer...")
  ensure_packer()
  print("Packer Installed.")

  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
      'svrana/neosolarized.nvim',
      requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
    }

    use 'nvim-lualine/lualine.nvim'     ---@ status line 

    use 'hrsh7th/nvim-cmp'              ---@ completion
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use 'neovim/nvim-lspconfig'         ---@ LSP 
    use 'onsails/lspkind-nvim'
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"

    use 'windwp/nvim-autopairs'         ---@ auto {} [] ()
    use 'windwp/nvim-ts-autotag'

    use 'nvim-tree/nvim-web-devicons'   ---@ extras
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-lua/plenary.nvim'
    use 'lewis6991/gitsigns.nvim'
end)
