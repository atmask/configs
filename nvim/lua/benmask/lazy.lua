local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "benmask.plugins" }, { import = "benmask.plugins.lsp"} }, {
  checker = { -- check for plugin updates
    enabled = true,
    notify = false,
  },
  change_detection = { -- disable the change notifications when editing plugins
    notify = false,
  },
})

