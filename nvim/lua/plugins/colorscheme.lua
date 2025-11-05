return {
  "navarasu/onedark.nvim",
  priority = 1000,
  config = function()
    require("onedark").setup({
      style = "dark", -- dark, darker, cool, deep, warm, warmer
      transparent = true,
      term_colors = true,
      ending_tildes = false,
      cmp_itemkind_reverse = false,
      
      -- Change code style
      code_style = {
        comments = "italic",
        keywords = "none",
        functions = "none",
        strings = "none",
        variables = "none",
      },
      
      -- Lualine options
      lualine = {
        transparent = false,
      },
    })
    require("onedark").load()
  end,
}
