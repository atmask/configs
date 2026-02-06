return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    { "<leader>df", "<cmd>DiffviewOpen main<cr>", desc = "Diff against main" },
    { "<leader>dc", "<cmd>DiffviewClose<cr>", desc = "Close diff view" },
    { "<leader>dh", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
  },
}
