return {
  "lazygit.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  keys = { { "<leader>lg", "<cmd>LazyGit<cr>" } },
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  before = function(_)
    vim.cmd.packadd("plenary.nvim")
  end,
}
