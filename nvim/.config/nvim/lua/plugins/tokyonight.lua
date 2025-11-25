return {
  "folke/tokyonight.nvim",
  lazy = false, -- cargar durante el inicio
  priority = 1000, -- cargar antes que otros plugins
  config = function()
    require("tokyonight").setup({
      -- tu configuración del tema aquí
      style = "moon", -- storm, moon, night, day
      transparent = false,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { italic = true },
        variables = {},
      },
    })

    vim.cmd([[colorscheme tokyonight]])
  end,
}
