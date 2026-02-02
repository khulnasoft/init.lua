return {
    'goolord/alpha-nvim',
    config = function ()
        local dashboard = require('alpha.themes.startify')
        dashboard.section.header.val = {
            [[                               __                ]],
            [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
            [[ /' _ `\ /' _ `\ /' _ `\\ \ \ \\/\ \ /' __` __`\  ]],
            [[ /\ \/\ \/\ \/\ \/\ \/\ \\ \ \_\\ \ \/\ \/\ \/\ \ ]],
            [[ \ \_\ \_\ \_\ \_\ \_\ \_\\ \__\ \ \_\ \_\ \_\ \_\]],
            [[  \/_/\/_/\/_/\/_/\/_/\/_/ \/__/  \/_/\/_/\/_/\/_/]],
        }
        require('alpha').setup(dashboard.opts)
    end
}
