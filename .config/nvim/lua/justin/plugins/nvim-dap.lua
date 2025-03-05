return {
  "mfussenegger/nvim-dap",
  vim.keymap.set("n", "<space>bb", "<cmd> DapToggleBreakpoint <CR>"),
  vim.keymap.set("n", "<space>bc", "<cmd> DapContinue <CR>"),
  vim.keymap.set("n", "<space>bo", "<cmd> DapStepOver <CR>"),
  vim.keymap.set("n", "<space>bl", "<cmd> DapShowLog <CR>"),
  vim.keymap.set("n", "<space>br", "<cmd> DapRestartFrame <CR>"),
  vim.keymap.set("n", "<space>bt", "<cmd> DapTerminate <CR>"),
}
