return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")

    -- setup básico
    npairs.setup({})

    -- regla para autoparear $ solo en latex y typst
    npairs.add_rules({
      Rule("$", "$")
        :with_pair(function(opts)
          local ft = vim.bo.filetype
          return ft == "tex" or ft == "typst"
        end)
        :with_move() -- permite moverse sobre el cierre
        :with_del(), -- permite borrar ambos $ a la vez
    })
  end,
}
