return {
  "git-messenger.vim",
  auto_enable = true,
  event = "DeferredUIEnter",
  after = function(_)
    vim.g.git_messenger_floating_win_opts = { border = "rounded" }
    vim.g.git_messenger_always_into_popup = true
    vim.g.git_messenger_include_diff = "current"
  end,
}
