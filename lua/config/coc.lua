vim.g.coc_global_extensions = {
    'coc-tsserver', 'coc-lists', 'coc-json', 'coc-css', 'coc-html', 'coc-yaml',
    'coc-yank', 'coc-emmet', 'coc-prisma', 'coc-explorer', 'coc-flutter',
    'coc-prettier', 'coc-eslint', 'coc-go', 'coc-phpls', 'coc-rls', 'coc-lua',
    'coc-elixir',  'coc-deno', 'coc-tailwindcss', 'coc-snippets', 'coc-pyright',
    'coc-prisma', 'coc-clangd'
}

-- Keymap
vim.api.nvim_set_keymap("n", "gd", "<Plug>(coc-definition)", {})
vim.api.nvim_set_keymap("n", "gt", "<Plug>(coc-type-definitions)", {})
vim.api.nvim_set_keymap("n", "gr", "<Plug>(coc-references)", {})
vim.api.nvim_set_keymap("n", "[g", "<Plug>(coc-diagnostic-prev)", {})
vim.api.nvim_set_keymap("n", "]g", "<Plug>(coc-diagnostic-next)", {})
vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", {})
vim.api.nvim_set_keymap("n", "<leader>dc", "<Plug>(coc-codeaction-selected)", {})
vim.api.nvim_set_keymap("n", "<leader>do", ":CocAction<cr>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>d", ":<C-u>CocList diagnostics<cr>",
                        {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>s", ":<C-u>CocList -I symbols<cr>",
                        {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>o", ":<C-u>CocList outline<cr>",
                        {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>y", ":<C-u>CocList -A --normal yank<cr>",
                        {noremap = true})
vim.api.nvim_set_keymap("n", "K", ":call CocActionAsync('doHover')<cr>",
                        {noremap = true})
vim.api.nvim_set_keymap("i", "<C-space>", "coc#refresh()",
                        {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<C-j>", "pumvisible() ? '<C-n>' : '<TAB>'", {noremap = true, silent = true, expr = true})
vim.api.nvim_set_keymap("i", "<C-k>", "pumvisible() ? '<C-p>' : '<C-h>'", {noremap = true, expr = true})
vim.api.nvim_set_keymap("i", "<CR>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
vim.api.nvim_set_keymap("i", "<Tab>", "pumvisible() ? coc#_select_confirm() : '<C-G>u<CR><C-R>=coc#on_enter()<CR>'", {silent = true, expr = true, noremap = true})
-- vim.api.nvim_set_keymap("i", "<CR>", "<Plug>(coc-snippets-expand)", { silent = true, expr = true })
-- vim.api.nvim_set_keymap("i", "<Tab>", "<Plug>(coc-snippets-expand)", { silent = true, expr = true })

vim.g.coc_snippet_next = "<C-j>"
vim.g.coc_snippet_prev = "<C-k>"

vim.cmd [[ command! -nargs=0 Format :call CocAction('format') ]]

-- Indentation
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.bo.smartindent = true
