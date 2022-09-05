require('nvim-tree').setup({
    diagnostics = {
        enable = true
    },
    renderer = {
        icons = {
            show = {
                folder_arrow = false,   
            },
            glyphs = {
                folder = {
                    default = " ",
                    empty = " ",
                    empty_open = " ",
                }  
            }
        }
    }
})
