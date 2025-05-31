-- plugins/quarto.lua
return {
  {
    'quarto-dev/quarto-nvim',
    dependencies = {
      'jmbuhr/otter.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      -- Normal mode: Run QuartoPreview
      vim.keymap.set('n', '<leader>qp', ':QuartoPreview<CR>', { desc = 'Open Quarto [P]review', noremap = true, silent = true })

      -- Normal mode: Insert a Python code block
      vim.keymap.set('n', '<leader>qi', function()
        local lines = {
          '```{python}',
          '',
          '```',
        }
        vim.api.nvim_put(lines, 'l', true, true)
        vim.cmd 'normal! k' -- move cursor inside the block
      end, { desc = 'Insert [P]ython code block', noremap = true, silent = true })

      -- Normal mode: Insert a mermaid code block
      vim.keymap.set('n', '<leader>qm', function()
        local lines = {
          '```{mermaid}',
          '',
          '```',
        }
        vim.api.nvim_put(lines, 'l', true, true)
        vim.cmd 'normal! k' -- move cursor inside the block
      end, { desc = 'Insert [M]ermaid code block', noremap = true, silent = true })
    end,
  },
}
