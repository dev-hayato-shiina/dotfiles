return {
  "nvim-notify",
  auto_enable = true,
  event = "DeferredUIEnter",
  after = function(_)
    require("notify").setup({
      top_down = false,
    })
  end,
}

