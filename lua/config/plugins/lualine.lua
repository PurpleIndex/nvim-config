return { 
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      require("lualine").setup{
        options = {
          section_separators = { left = '', right = '' },
          component_separators = {left = '', right = ''},
          globalstatus = true
        },
        sections = {
          lualine_a = {{"mode", separator = {left = '', right = ''}}},
          lualine_b = {{ "branch", section_separators = { left = '' }}, "diff"},
          lualine_c = {"filename"},
          lualine_x = {"searchcount","filetype", "encoding"},
          lualine_y = {{"progress", section_separators = {right = ''}}},
          lualine_z = {{"location", separator = {left = '', right = ''}}}
        },
      }
    end
  } 
}
