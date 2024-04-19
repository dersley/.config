return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,

  init = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = true,
      dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15,
      },
    }

    vim.cmd.colorscheme 'catppuccin'
  end,
}
