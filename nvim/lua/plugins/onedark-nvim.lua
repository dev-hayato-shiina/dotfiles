return {
  "onedark.nvim",
  auto_enable = true,
  event = "VimEnter",
  after = function(_)
    vim.cmd.colorscheme("onedark")
  end,
}
