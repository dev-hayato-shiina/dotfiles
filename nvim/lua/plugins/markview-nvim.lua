return {
  "markview.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  after = function(_)
    require("markview").setup()
  end,
}
