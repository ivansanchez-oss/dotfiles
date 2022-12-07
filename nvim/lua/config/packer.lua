return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'ellisonleao/gruvbox.nvim'
    use 'neovim/nvim-lspconfig' 
    use 'simrat39/rust-tools.nvim'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 
   
   -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

   -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

    -- Highlight
    use 'nvim-treesitter/nvim-treesitter'
   
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    
    -- Gui
    use 'beauwilliams/statusline.lua'

  end)
