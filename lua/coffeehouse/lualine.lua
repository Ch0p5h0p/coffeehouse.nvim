local lualine = require('lualine')
local palette = require('coffeehouse.palette')

return function(flavor)
    local t = palette[flavor]
    local config = lualine.get_config()

    config.options.theme = {
        normal = {
            a = { bg = t.blue, fg = t.bg, gui = 'bold' },
            b = { fg = t.blue },
        },
        insert = {
            a = { bg = t.green, fg = t.bg, gui = 'bold' },
            b = { fg = t.green },
        },
        visual = { 
            a = { bg = t.purple, fg = t.bg, gui = 'bold' },
            b = { fg = t.purple },
        },
        command = {
            a = { bg = t.dark_orange, fg = t.bg, gui = 'bold' },
            b = { fg = t.dark_orange },
        },
        replace = {
            a = { bg = t.red, fg = t.bg, gui = 'bold' },
            b = { fg = t.red },
        },
    }

    lualine.setup(config)
end
