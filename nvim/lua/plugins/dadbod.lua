return {
  {
    "tpope/vim-dadbod",
    lazy = true,
  },

  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = { "tpope/vim-dadbod" },
    cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    init = function()
      -- Where DBUI stores connection configs
      vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/db_ui"

      -- Icons and UI tweaks
      vim.g.db_ui_use_nerd_fonts = true
      vim.g.db_ui_show_help = true
      vim.g.db_ui_win_position = "left" -- or "right"
      vim.g.db_ui_winwidth = 40

      -- Auto-execute queries on write via :w
      vim.g.db_ui_execute_on_save = false
    end,
  },

  {
    "kristijanhusak/vim-dadbod-completion",
    dependencies = { "tpope/vim-dadbod" },
    ft = { "sql", "mysql", "plsql" },
    config = function()
      -- Enable completion via nvim-cmp
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "sql", "mysql", "plsql" },
        callback = function()
          -- Disable default omnifunc so nvim-cmp takes over
          vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
        end,
      })
    end,
  },
}
