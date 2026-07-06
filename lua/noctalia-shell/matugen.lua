local M = {}

function M.setup()
    require('base16-colorscheme').setup {
        -- Background tones
        base00 = '#0e142f',                -- Default Background
        base01 = '#18214e',      -- Lighter Background (status bars)
        base02 = '#161e46', -- Selection Background
        base03 = '#5f6273',                -- Comments, Invisibles
        -- Foreground tones
        base04 = '#afb0b6',     -- Dark Foreground (status bars)
        base05 = '#f2f2f3',             -- Default Foreground
        base06 = '#f2f2f3',             -- Light Foreground
        base07 = '#f2f2f3',          -- Lightest Foreground
        -- Accent colors
        base08 = '#fd4663',                  -- Variables, XML Tags, Errors
        base09 = '#bc63cf',               -- Integers, Constants
        base0A = '#825cd6',              -- Classes, Search Background
        base0B = '#677de4',                -- Strings, Diff Inserted
        base0C = '#da96e9',     -- Regex, Escape Chars
        base0D = '#93a2ec',      -- Functions, Methods
        base0E = '#b096e9',    -- Keywords, Storage
        base0F = '#900017',        -- Deprecated, Embedded Tags
    }
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
    'sigusr1',
    vim.schedule_wrap(function()
        package.loaded['noctalia-shell.matugen'] = nil
        require('noctalia-shell.matugen').setup()
    end)
)

return M
