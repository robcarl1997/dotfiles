return {
    "vimwiki/vimwiki",
    init = function()
        vim.g.vimwiki_list = {
            {
                template_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/vimwiki/autoload/",
                syntax = "markdown",
                ext = ".md",
                vimwiki_global_ext = 0
            },
        }
    end,
}
