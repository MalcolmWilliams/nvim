local function get_clangd_command()
	if vim.env.IDF_PATH then
		return {
			"clangd",
			-- "--query-driver="
			-- 	.. "$HOME/.espressif"
			-- 	.. "/tools/**",
      "--query-driver=/usr/local/gcc-arm-none-eabi/bin/arm-none-eabi-gcc",
		}
	else
    vim.notify("NOT on idf toolpath")
		return {
			"clangd",
		}
	end
end

local M = {
	cmd = get_clangd_command(),
}

return M
