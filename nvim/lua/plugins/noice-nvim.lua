return {
  "noice.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  before = function(_)
    vim.cmd.packadd("nui.nvim")
    vim.cmd.packadd("nvim-notify")
  end,
  after = function(_)
    require("noice").setup()
  end,
}
