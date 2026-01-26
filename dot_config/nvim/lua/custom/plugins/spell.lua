return {
  {
    name = 'spell-settings',
    dir = vim.fn.stdpath 'config',
    ft = 'markdown',
    config = function()
      vim.opt.spell = false
      vim.opt.spelllang = { 'en', 'nl' }
      vim.opt.spelloptions = 'camel'
      local function apply_markdown_spell(bufnr)
        vim.api.nvim_buf_call(bufnr, function()
          vim.opt_local.spell = true
        end)
      end

      local spell_group = vim.api.nvim_create_augroup('custom-spell', { clear = true })
      vim.api.nvim_create_autocmd({ 'FileType', 'BufWinEnter' }, {
        group = spell_group,
        pattern = { 'markdown' },
        callback = function(args)
          apply_markdown_spell(args.buf)
        end,
      })

      if vim.bo.filetype == 'markdown' then
        apply_markdown_spell(0)
      end
    end,
  },
}
