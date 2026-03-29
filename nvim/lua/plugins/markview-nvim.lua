return {
  "markview.nvim",
  event = "DeferredUIEnter",
  after = function(_)
    require("markview").setup()
  end,
}

