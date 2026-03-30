return {
  "alpha-nvim",
  auto_enable = true,
  event = "VimEnter",
  after = function(_)
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }
    alpha.setup(dashboard.config)

    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaReady",
      once = true,
      callback = function()
        local prev = vim.fn.bufnr("#")
        if prev ~= -1 and vim.fn.buflisted(prev) == 1 and vim.api.nvim_buf_get_name(prev) == "" then
          vim.cmd("bdelete " .. prev)
        end
      end,
    })

    alpha.start(false)
  end,
}
