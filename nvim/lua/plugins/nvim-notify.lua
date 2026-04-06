return {
  "nvim-notify",
  auto_enable = true,
  event = "DeferredUIEnter",
  after = function(_)
    require("notify").setup({
      background_colour = "#000000",
    })
  end,
}
