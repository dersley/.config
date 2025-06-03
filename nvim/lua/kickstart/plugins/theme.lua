return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha', -- latte, frappe, macchiato, mocha
      transparent_background = true,
      integrations = {
        treesitter = true,
        lsp_saga = true,
        mason = true,
        cmp = true,
        gitsigns = true,
        telescope = true,
        which_key = true,
        native_lsp = {
          enabled = true,
        },
      },
    }
    -- Apply the colorscheme
    vim.cmd.colorscheme 'catppuccin'
  end,
}
