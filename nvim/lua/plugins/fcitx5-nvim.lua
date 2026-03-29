return {
  "fcitx5.nvim",
  auto_enable = "fcitx5-nvim",
  event = "ModeChanged",
  load = function(_)
    vim.cmd.packadd("fcitx5-nvim")
  end,
  after = function(_)
    require("fcitx5").setup({
      imname = {
        norm = "keyboard-jp",
        ins = "keyboard-jp",
        cmd = "keyboard-jp",
      },
      remember_prior = false,
    })
  end,
}
