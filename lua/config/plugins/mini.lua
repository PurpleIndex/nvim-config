return {
  { 
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      require('mini.indentscope').setup()
      require('mini.icons').setup()
      require('mini.comment').setup()
      require('mini.pairs').setup()
      require('mini.surround').setup()
    end
  }   
}
