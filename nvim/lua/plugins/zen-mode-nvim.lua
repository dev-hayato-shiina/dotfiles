return {
  "zen-mode.nvim",
  event = "DeferredUIEnter",
  cmd = "ZenMode",
  keys = { { "<leader>zm", "<cmd>ZenMode<cr>", mode = "n" } },
  after = function(_)
    require("zen-mode").setup({
      plugins = {
        twilight = { enabled = true },
      },
    })
  end,
}
