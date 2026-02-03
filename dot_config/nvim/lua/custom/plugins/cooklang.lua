return {
  {
    'luizribeiro/vim-cooklang',
    ft = 'cook',
    init = function()
      vim.filetype.add {
        extension = {
          cook = 'cook',
        },
      }
    end,
  },
}
