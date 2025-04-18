local python = {}

local function get_lsp_root()
	local clients = vim.lsp.get_active_clients({ bufnr = 0 })
	for _, client in ipairs(clients) do
		if client.config and client.config.root_dir then
			return client.config.root_dir
		end
	end
	return nil
end

local function add_root_to_path()
	local lsp_root = get_lsp_root()

	vim.api.nvim_chan_send(vim.b.terminal_job_id, cmd)
end

function python.run_file()
	-- Get file name in the current buffer
	local file_name = vim.api.nvim_buf_get_name(0)

	-- Get terminal codes for running python file
	-- ("i" to enter insert before typing rest of the command)
	local py_cmd = vim.api.nvim_replace_termcodes('ipython "' .. file_name .. '"<cr>', true, false, true)

	-- Determine terminal window split and launch terminal
	local percent_of_win = 0.4
	local curr_win_height = vim.api.nvim_win_get_height(0) -- Current window height
	local term_height = math.floor(curr_win_height * percent_of_win) -- Terminal height
	vim.cmd(":below " .. term_height .. "split | term") -- Launch terminal (horizontal split)

	add_root_to_path()
end

return python
