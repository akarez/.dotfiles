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
    use 'nvim-lualine/lualine.nvim'

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'

    use 'onsails/lspkind-nvim'
    use 'neovim/nvim-lspconfig'

    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'


end)