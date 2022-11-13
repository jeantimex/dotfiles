-- import surround safely
local status, surround = pcall(require, "nvim-surround")
if not status then
  return
end

surround.setup()
