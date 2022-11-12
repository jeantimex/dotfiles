local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("Colorscheme nightfly not found!")
  return
end
