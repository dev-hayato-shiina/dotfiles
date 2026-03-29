return {
  "indent-blankline.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  after = function(_)
    require("ibl").setup()
  end,
}

