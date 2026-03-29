return {
  "neo-tree.nvim",
  auto_enable = true,
  event = "DeferredUIEnter",
  keys = { { "<leader>e", "<cmd>Neotree toggle<cr>" } },
  before = function(_)
    vim.cmd.packadd("plenary.nvim")
    vim.cmd.packadd("nui.nvim")
    vim.cmd.packadd("nvim-web-devicons")
  end,
  after = function(_)
    require("neo-tree").setup({
      window = {
        width = 30,
        auto_expand_width = false,
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        cwd_target = {
          sidebar = "window",
        },
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
    })
  end,
}
