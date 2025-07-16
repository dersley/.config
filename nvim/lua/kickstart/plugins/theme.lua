return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'dark',
      transparent = true,
      diagnostics = {
        background = false,
      },
    }

    -- Enable theme
    require('onedark').load()
  end,
}
