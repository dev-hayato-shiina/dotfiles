return {
  "lazydocker.nvim",
  auto_enable = "lazydocker-nvim",
  event = "BufRead",
  keys = { { "<leader>ld", "<cmd>Lazydocker<cr>" } },
  load = function(_)
    vim.cmd.packadd("lazydocker-nvim")
  end,
  before = function(_)
    vim.cmd.packadd("toggleterm.nvim")
  end,
  after = function(_)
    require("lazydocker").setup({
      border = "curved",
      width = 0.9,
      height = 0.9,
    })
  end,
}
