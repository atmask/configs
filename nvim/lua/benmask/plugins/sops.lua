return {
  "atmask/sops.nvim",
  ft = { "yaml", "json" }, -- Lazy load on YAML/JSON files
  opts = {
    -- Disable automatic operations - use manual commands instead
    auto_decrypt = false,
    auto_encrypt = true,
  },
  keys = {
    { "<leader>sd", "<cmd>SopsDecrypt<cr>", desc = "Decrypt SOPS file" },
    { "<leader>se", "<cmd>SopsEncrypt<cr>", desc = "Encrypt SOPS file" },
  },
}

