-- ADD THIS IN .bashrcll
--export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --no-ignore-vcs'
--export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
--alias fzfi='rg --files --hidden --follow --no-ignore-vcs -g "!{node_modules,.git}" | fzf`
vim.cmd([[command! -bang -nargs=*  All
  \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden --no-ignore-vcs --glob "!{node_modules/*,.git/*}"', 'down': '20%', 'height': '50%', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi' }))
  ]])

--FZF trigger(ctrlp)
-- keyset("n", "<C-p>", ":All<CR>", {silent = true})
