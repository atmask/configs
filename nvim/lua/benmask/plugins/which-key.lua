return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    preset = "modern",
    spec = {
      -- LSP related groups
      { "g", group = "goto" },
      { "<leader>c", group = "code" },
      { "<leader>d", group = "diagnostics" },
      { "<leader>r", group = "refactor" },
      { "<leader>f", group = "find" },
      { "<leader>w", group = "workspace/session" },
      { "<leader>e", group = "explorer" },
      { "[", group = "previous" },
      { "]", group = "next" },
    },
  },
}
