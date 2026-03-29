return {
  "hop.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  keys = { { "f", "<cmd>HopWord<cr>", mode = "n" } },
  after = function(_)
    require("hop").setup({
      keys = "etovxqpdygfblzhckisuran",
    })
  end,
}
