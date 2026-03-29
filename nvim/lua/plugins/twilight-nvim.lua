return {
  "twilight.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  cmd = {
    "Twilight",
    "TwilightEnable",
    "TwilightDisable",
  },
  after = function(_)
    require("twilight").setup({
      dimming = {
        inactive = true,
      },
      context = 15,
    })
  end,
}
