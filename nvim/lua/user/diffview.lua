
local status_ok, diff_view = pcall(require, "diffview")
if not status_ok then
  return
end


diff_view.setup()
