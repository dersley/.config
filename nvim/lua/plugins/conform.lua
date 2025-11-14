return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end,
      mode = { "n", "v" },
      desc = "Format file or range (in visual mode)",
    },
  },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        -- Python
        python = { "ruff_format", "ruff_organize_imports" },
        -- JavaScript/TypeScript
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        -- Web
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        -- Other languages
        lua = { "stylua" },
        rust = { "rustfmt" },
        go = { "gofmt" },
        sh = { "shfmt" },
      },
      -- Format on save
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      }
    })

    -- Command to toggle format on save
    vim.api.nvim_create_user_command("FormatToggle", function()
      if vim.g.disable_autoformat then
        vim.g.disable_autoformat = false
        print("Format on save enabled")
      else
        vim.g.disable_autoformat = true
        print("Format on save disabled")
      end
    end, {
      desc = "Toggle format on save",
    })

    -- Respect the toggle in format_on_save
    conform.setup({
      format_on_save = function(bufnr)
        if vim.g.disable_autoformat then
          return
        end
        return {
          timeout_ms = 1000,
          lsp_fallback = true,
        }
      end,
    })
  end,
}
