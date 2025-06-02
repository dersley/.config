local M = {}

local terminal_buf = nil
local terminal_win = nil

function M.toggle()
  -- Close the floating terminal window if it's open
  if terminal_win and vim.api.nvim_win_is_valid(terminal_win) then
    vim.api.nvim_win_close(terminal_win, true)
    terminal_win = nil
    return
  end

  -- Create terminal buffer if it doesn't exist
  if not (terminal_buf and vim.api.nvim_buf_is_valid(terminal_buf)) then
    terminal_buf = vim.api.nvim_create_buf(false, true)
    -- Mark buffer as 'hidden' so it persists after closing the window
    vim.api.nvim_buf_set_option(terminal_buf, 'bufhidden', 'hide')

    -- Start the shell in the buffer
    vim.api.nvim_buf_call(terminal_buf, function()
      vim.fn.termopen(vim.o.shell)
    end)
  end

  -- Reopen the floating window using the existing buffer
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  terminal_win = vim.api.nvim_open_win(terminal_buf, true, {
    relative = 'editor',
    row = row,
    col = col,
    width = width,
    height = height,
    style = 'minimal',
    border = 'rounded',
  })

  vim.cmd 'startinsert'
end

return M
