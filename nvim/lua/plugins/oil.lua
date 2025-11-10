return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true,

      columns = {
        "icon",
      },

      buf_options = {
        buflisted = false,
        bufhidden = "hide",
      },

      win_options = {
        wrap = false,
        signcolumn = "no",
        cursorcolumn = false,
        foldcolumn = "0",
        spell = false,
        list = false,
        conceallevel = 3,
        concealcursor = "nvic",
      },

      delete_to_trash = false,
      skip_confirm_for_simple_edits = false,
      prompt_save_on_select_new_entry = true,

      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-s>"] = "actions.select_vsplit",
        ["<C-h>"] = "actions.select_split",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["<C-l>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = "actions.tcd",
        ["gs"] = "actions.change_sort",
        ["gx"] = "actions.open_external",
        ["g."] = "actions.toggle_hidden",
        ["g\\"] = "actions.toggle_trash",
      },
      use_default_keymaps = true,

      view_options = {
        show_hidden = true,
        is_hidden_file = function(name, _)
          return vim.startswith(name, ".")
        end,
        is_always_hidden = function(_, _)
          return false
        end,
        sort = {
          { "type", "asc" },
          { "name", "asc" },
        },
      },

      -- Preview window for regular buffers
      preview = {
        enabled = true,
        border = "rounded",     -- Optional
        min_width = { 40, 0.4 },
        max_width = 0.9,
        min_height = { 5, 0.1 },
        max_height = 0.9,
        win_options = {
          winblend = 0,
        },
      },

      -- Disable floating mode entirely
      float = {
        enabled = false,
      },
    })

    -- Keymap: open Oil in the current window (regular buffer)
    vim.keymap.set("n", "<leader>o", require("oil").open, { desc = "Open parent directory in current window" })
  end,
}

