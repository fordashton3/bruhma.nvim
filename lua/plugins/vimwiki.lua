return {
	{"vimwiki/vimwiki", 
    config= function() 
        vim.g.vimwiki_list = {
            {
            path = '~/docs/vimwiki',
            syntax = 'default',
            ext = '.wiki',
            },
        }
    end,
    },
}
