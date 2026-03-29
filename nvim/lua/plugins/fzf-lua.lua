return {
  "fzf-lua",
  auto_enable = true,
  event = "DeferredUIEnter",
  keys = {
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").buffers()
      end,
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").help_tags()
      end,
    },
    {
      "<leader>fr",
      function()
        require("fzf-lua").oldfiles()
      end,
    },
    {
      "<leader>fc",
      function()
        require("fzf-lua").commands()
      end,
    },
  },
  before = function(_)
    vim.cmd.packadd("nvim-web-devicons")
  end,
  after = function(_)
    require("fzf-lua").setup()
  end,
}
