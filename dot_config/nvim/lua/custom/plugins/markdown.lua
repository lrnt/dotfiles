return {
  {
    'OXY2DEV/markview.nvim',
    lazy = false,
    config = function()
      require('markview').setup({
        preview = {
          enable = true,
          enable_hybrid_mode = true,
          modes = { 'n' },
          hybrid_modes = { 'n' },
        },
        markdown = {
          block_quotes = { wrap = true },
          headings = { org_indent_wrap = true },
          list_items = { wrap = true },
        },
      })
    end,
  },
  {
    'gaoDean/autolist.nvim',
    ft = 'markdown',
    config = function()
      require('autolist').setup({
        colon = {
          indent = false,
          indent_raw = false,
        },
      })
      vim.keymap.set('i', '<CR>', '<CR><cmd>AutolistNewBullet<cr>')
      vim.keymap.set('n', 'o', 'o<cmd>AutolistNewBullet<cr>')
      vim.keymap.set('n', 'O', 'O<cmd>AutolistNewBulletBefore<cr>')
    end,
  },
}
