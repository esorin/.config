return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --INITIAL
  use 'mfussenegger/nvim-dap'
  use 'mfussenegger/nvim-jdtls'
  use 'nvim-lua/plenary.nvim'

  --AUTOCOMPLETE
  --use 'hrsh7th/nvim-cmp'
  --use 'hrsh7th/cmp-nvim-lsp'
  --use 'hrsh7th/cmp-vsnip'
  --use 'hrsh7th/vim-vsnip'


  use
  {
    'hrsh7th/nvim-cmp',
     requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'onsails/lspkind.nvim',
    },
    config = function() require('nvim-cmp') end
  }

end)

