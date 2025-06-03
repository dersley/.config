-- ~/.config/nvim/lua/plugins/zen.lua
return {
  'folke/zen-mode.nvim',
  opts = {
    window = {
      backdrop = 0.95,
      width = 88,
      options = {
        signcolumn = 'no',
        number = false,
        relativenumber = false,
        cursorline = false,
        cursorcolumn = false,
        foldcolumn = '0',
        list = false,
      },
    },
    plugins = {
      gitsigns = { enabled = false },
      tmux = { enabled = false },
      kitty = {
        enabled = false,
        font = '+4',
      },
    },
  },
  keys = {
    {
      '<leader>z',
      function()
        require('zen-mode').toggle()
      end,
      desc = 'Toggle [Z]en Mode',
    },
  },
}
