return {
  {
    'obsidian-nvim/obsidian.nvim',
    version = '*',
    ft = 'markdown',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    opts = {
      legacy_commands = false,
      frontmatter = {
        enabled = false,
      },
      workspaces = {
        {
          name = 'lrnt',
          path = '~/Code/lrnt/vault',
        },
      },
      daily_notes = {
        folder = 'dailies',
        date_format = '%Y-%m-%d',
        default_tags = {},
        template = 'daily.md',
      },
      templates = {
        folder = 'templates',
        date_format = '%Y-%m-%d',
        time_format = '%H:%M',
      },
      completion = {
        blink = true,
        nvim_cmp = false,
      },
      picker = {
        name = 'telescope',
      },
      ui = {
        enable = false,
      },
      statusline = {
        enabled = false,
      },
      footer = {
        enabled = false,
      },
      checkbox = {
        order = { ' ', 'x' },
      },
    },
    keys = {
      { '<leader>on', '<cmd>Obsidian new<cr>', desc = '[O]bsidian [N]ew note' },
      { '<leader>oo', '<cmd>Obsidian open<cr>', desc = '[O]bsidian [O]pen in app' },
      { '<leader>ol', '<cmd>Obsidian links<cr>', desc = '[O]bsidian [L]inks' },
      { '<leader>od', '<cmd>Obsidian dailies<cr>', desc = '[O]bsidian [D]ailies' },
      { '<leader>ot', '<cmd>Obsidian today<cr>', desc = '[O]bsidian [T]oday' },
      { '<leader>om', '<cmd>Obsidian tomorrow<cr>', desc = '[O]bsidian to[M]orrow' },
      { '<leader>oy', '<cmd>Obsidian yesterday<cr>', desc = '[O]bsidian [Y]esterday' },
    },
  },
}
