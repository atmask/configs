return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "github/copilot.vim" }, -- or github/copilot.vim
      { "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    config = function()
      -- set keymaps
      local keymap = vim.keymap -- for conciseness

      keymap.set("n", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { desc = "Open Copilot Chat" })
      keymap.set("n", "<leader>ct", "<cmd>CopilotChatTests<cr>", { desc = "Generate Tests" })
      keymap.set("n", "<leader>ce", "<cmd>CopilotChatExplain<cr>", { desc = "Explain the selected code" })
      keymap.set("n", "<leader>cd", "<cmd>CopilotChatDocs<cr>", { desc = "Generate docs for the selected code" })
    end,
    -- See Commands section for default commands if you want to lazy load on them
  },
}
