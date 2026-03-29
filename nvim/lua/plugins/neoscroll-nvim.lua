return {
  "neoscroll.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  after = function(_)
    require("neoscroll").setup({
      respect_scrolloff = true,
    })
  end,
}
