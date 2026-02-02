local function open_habits(opts)
  local script = vim.fn.expand '~/Code/lrnt/kb/habits/main.py'
  local vault = vim.fn.expand '~/Code/lrnt/vault/dailies'
  local args = opts and opts.fargs or {}
  local parts = { vim.fn.shellescape(script), '--vault', vim.fn.shellescape(vault) }
  for _, arg in ipairs(args) do
    table.insert(parts, vim.fn.shellescape(arg))
  end
  local cmd = table.concat(parts, ' ')

  vim.cmd 'botright split'
  vim.cmd 'resize 24'
  vim.cmd('terminal ' .. cmd)
  vim.bo.bufhidden = 'wipe'
  vim.bo.swapfile = false
  vim.cmd 'startinsert'
end

vim.api.nvim_create_user_command('Habits', open_habits, {
  nargs = '*',
})

vim.keymap.set('n', '<leader>oh', '<cmd>Habits<cr>', { desc = '[O]bsidian [H]abits' })
