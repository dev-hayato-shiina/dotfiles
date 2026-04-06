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
        BufferLineSeparatorSelected = { fg = "none", bg = "none" },
        BufferLineSeparatorVisible = { fg = "none", bg = "none" },
        BufferLineSeparator = { fg = "none", bg = "none" },

        -- StatusLine
        -- :filter /^StatusLine/ highlight
        StatusLine = { bg = "none" },
        StatusLineNC = { bg = "none" },
        StatusLineTerm = { bg = "none" },
        StatusLineTermNC = { bg = "none" },

        -- Which Key, Blink
        -- :filter /^Which/ highlight
        -- :filter /^Blink/ highlight
        NormalFloat = { fg = c.cyan, bg = "none" },
        FloatBorder = { fg = c.cyan, bg = "none" },
        BlinkCmpDoc = { bg = "none" },
        Pmenu = { fg = c.cyan, bg = "none" },
        PmenuExtra = { bg = "none" },

        -- fzf
        -- :filter /^FzfLua/ highlight
        FzfLuaBorder = { fg = c.cyan, bg = "none" },
      },
    })

    require("onedark").load()
  end,
}
