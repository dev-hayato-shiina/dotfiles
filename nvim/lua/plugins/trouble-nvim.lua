return {
  "trouble.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  cmd = {
    "TroubleToggle",
    "Trouble",
  },
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
    },
  },
  after = function(_)
    require("trouble").setup()
  end,
}

