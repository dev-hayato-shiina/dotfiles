return {
  "blamer.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  after = function(_)
    vim.g.blamer_enabled = 1
    vim.g.blamer_delay = 100
    vim.g.blamer_show_in_visual_modes = 0
  end,
}

