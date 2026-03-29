return {
  "nvim-surround",
  auto_enable = true,
  event = "DeferredUIEnter",
  after = function(_)
    require("nvim-surround").setup()
  end,
}
