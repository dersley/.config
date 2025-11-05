return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local db = require("dashboard")

    db.setup({
      theme = "doom",
      config = {
        header = vim.split([[






 ██████   █████ ██████████    ███████    █████   █████ █████ ██████   ██████
░░██████ ░░███ ░░███░░░░░█  ███░░░░░███ ░░███   ░░███ ░░███ ░░██████ ██████ 
 ░███░███ ░███  ░███  █ ░  ███     ░░███ ░███    ░███  ░███  ░███░█████░███ 
 ░███░░███░███  ░██████   ░███      ░███ ░███    ░███  ░███  ░███░░███ ░███ 
 ░███ ░░██████  ░███░░█   ░███      ░███ ░░███   ███   ░███  ░███ ░░░  ░███ 
 ░███  ░░█████  ░███ ░   █░░███     ███   ░░░█████░    ░███  ░███      ░███ 
 █████  ░░█████ ██████████ ░░░███████░      ░░███      █████ █████     █████
░░░░░    ░░░░░ ░░░░░░░░░░    ░░░░░░░         ░░░      ░░░░░ ░░░░░     ░░░░░ 


        ]], "\n"),

        center = {
          { icon = "  ", desc = "Find File", action = "Telescope find_files", key = "f" },
          { icon = "  ", desc = "Recent Files", action = "Telescope oldfiles", key = "r" },
          { icon = "  ", desc = "Find Word", action = "Telescope live_grep", key = "g" },
          { icon = "  ", desc = "New File", action = "enew", key = "n" },
          { icon = "  ", desc = "Update Plugins", action = "Lazy sync", key = "u" },
          { icon = "  ", desc = "Quit", action = "qa", key = "q" },
        },

      },
    })
  end,
}

