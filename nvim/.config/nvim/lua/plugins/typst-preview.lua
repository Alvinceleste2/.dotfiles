return {
  "chomosuke/typst-preview.nvim",
  lazy = false, -- or ft = 'typst'
  version = "1.*",
  opts = {
    -- The following only for NixOS
    dependencies_bin = {
      tinymist = "/run/current-system/sw/bin/tinymist",
      websocat = "/run/current-system/sw/bin/websocat",
    },
  }, -- lazy.nvim will implicitly calls `setup {}`
}
