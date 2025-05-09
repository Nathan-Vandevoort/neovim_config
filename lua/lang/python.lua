local python = {}

function python.run_file()
	-- Get file name in the current buffer
	local file_name = vim.api.nvim_buf_get_name(0)

	-- Get terminal codes for running python file
	-- ("i" to enter insert before typing rest of the command)
	local py_cmd = vim.api.nvim_replace_termcodes('python "' .. file_name .. '"<cr>', true, false, true)

	-- Determine terminal window split and launch terminal
	local percent_of_win = 0.4
	local curr_win_height = vim.api.nvim_win_get_height(0) -- Current window height
	local term_height = math.floor(curr_win_height * percent_of_win) -- Terminal height
	vim.cmd(":below " .. term_height .. "split | term") -- Launch terminal (horizontal split)
	vim.api.nvim_chan_send(vim.b.terminal_job_id, py_cmd)
end

return python
