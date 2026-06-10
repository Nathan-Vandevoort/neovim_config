local has_noctalia = vim.fn.isdirectory(vim.fn.expand("~/.config/noctalia")) == 1
if has_noctalia then
    return {
        {
            "RRethy/base16-nvim",
            config = function()
                require("noctalia-shell.matugen").setup()
            end,
        },
    }
else
    return {
        {
            "catppuccin/nvim",
            config = function()
                vim.cmd.colorscheme("catppuccin-mocha")
            end,
        },
    }
end
