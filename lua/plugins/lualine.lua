  return{
    'nvim-lualine/lualine.nvim',
    config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter" } },
      },
      sections = {
        lualine_a = {
          {
            "mode",
          },
        },
        lualine_b = {
          "branch",
        },
        lualine_c = {
          {
            "filename",
          },
        },
        lualine_x = {
          {
            "encoding",
          },
          {
            "fileformat",
          },
          {
            "filetype",
          },
          {
            require("noice").api.statusline.mode.get,
            cond = require("noice").api.statusline.mode.has,
            color = { fg = "#ff9e64" },
          },
        },
        lualine_y = {
          {
            "progress",
            separator = " ",
            padding = { left = 1, right = 0 },
          },
          {
            "location",
            padding = { left = 0, right = 1 },
          },
        },
        lualine_z = {
          {
            function()
              return " " .. os.date("%R")
            end,
          },
        },
      },
      -- Optionally, set this to ensure lualine still functions as expected with Neo-tree.
      extensions = { "neo-tree", "lazy" },
    })
  end,
  }
