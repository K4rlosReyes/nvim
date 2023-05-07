require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    work = "~/Notes/projects",
                    home = "~/Notes/areas",
                }
            }
        }
    }
}
