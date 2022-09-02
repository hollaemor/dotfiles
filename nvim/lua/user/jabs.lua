local status_ok, jabs = pcall(require, "jabs")
if not status_ok then
	return
end

jabs.setup({
	position = "center",
	height = 20,
	width = 60,
})
