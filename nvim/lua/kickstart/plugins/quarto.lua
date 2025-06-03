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
      vim.keymap.set('n', '<leader>qo', ':QuartoPreview<CR>', { desc = '[Q]uarto: [O]pen Preview', noremap = true, silent = true })

      -- Normal mode: Insert a Python code block
      vim.keymap.set('n', '<leader>qp', function()
        local lines = {
          '```{python}',
          '',
          '```',
        }
        vim.api.nvim_put(lines, 'l', true, true)
        vim.cmd 'normal! k' -- move cursor inside the block
      end, { desc = '[Q]uarto: [P]ython code block', noremap = true, silent = true })

      -- Normal mode: Insert a mermaid code block
      vim.keymap.set('n', '<leader>qm', function()
        local lines = {
          '```{mermaid}',
          '',
          '```',
        }
        vim.api.nvim_put(lines, 'l', true, true)
        vim.cmd 'normal! k' -- move cursor inside the block
      end, { desc = '[Q]uarto: [M]ermaid code block', noremap = true, silent = true })

      -- Normal mode: Insert a blogpost YAML header
      vim.keymap.set('n', '<leader>qh', function()
        local lines = {
          '---',
          'title:',
          'subtitle:',
          'author: "Nicholas Dorsch"',
          'date: today',
          'categories:',
          '---',
        }
        vim.api.nvim_put(lines, 'l', true, true)
        vim.cmd 'normal! k' -- move cursor inside the block
      end, { desc = '[Q]uarto: YAML [H]eader', noremap = true, silent = true })

      -- Normal mode: Insert an aligned Latex equation
      vim.keymap.set('n', '<leader>qe', function()
        local lines = {
          '$$',
          '\\begin{align}',
          '',
          '\\end{align}',
          '$$',
        }
        vim.api.nvim_put(lines, 'l', true, true)
        vim.cmd 'normal! k' -- move cursor inside the block
      end, { desc = '[Q]uarto: Latex [E]quation', noremap = true, silent = true })
    end,
  },
}
