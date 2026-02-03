return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = 'markdown',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      preset = 'obsidian',
      render_modes = { 'n' },
    },
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
