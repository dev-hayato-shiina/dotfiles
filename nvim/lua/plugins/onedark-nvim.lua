return {
  "onedark.nvim",
  auto_enable = true,
  event = "VimEnter",
  after = function(_)
    -- カラーパレットは以下で確認可能
    -- ~/.local/share/nvim/lazy/onedark.nvim/lua/onedark/palette.lua
    local c = require("onedark.palette").dark

    require("onedark").setup({
      style = "dark",
      transparent = true,

      highlights = {
        -- CursorLine
        CursorLine = { bg = c.bg2 },
        CursorLineNr = { fg = c.orange, fmt = "bold" },

        -- NeoTree
        -- :filter /^Neo/ highlight
        NeoTreeNormal = { bg = "none" },
        NeoTreeNormalNC = { bg = "none" },

        -- TabLine, BufferLine
        -- :filter /^TabLine/ highlight
        -- :filter /^BufferLine/ highlight
        TabLine = { fg = "none", bg = "none" },
        TabLineSel = { fg = "none", bg = "none" },
        TabLineFill = { fg = "none", bg = "none" },
        BufferLineSeparatorSelected = { fg = c.bg2, bg = "none" },
        BufferLineSeparatorVisible = { fg = c.bg2, bg = "none" },
        BufferLineSeparator = { fg = c.bg2, bg = "none" },

        -- StatusLine
        -- :filter /^StatusLine/ highlight
        StatusLine = { bg = "none" },
        StatusLineNC = { bg = "none" },
        StatusLineTerm = { bg = "none" },
        StatusLineTermNC = { bg = "none" },
      },
    })

    require("onedark").load()
  end,
}
