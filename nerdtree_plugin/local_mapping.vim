" customize nerdtree key binding
if exists("g:loaded_nerdtree_plugin_local_mapping")
    finish
endif
let g:loaded_nerdtree_plugin_local_mapping = 1
let base = {
      \ 'callback': 'MyNERDTreeClose',
      \ 'quickhelpText': 'close nerd tree if open'
      \ }

for key in ['H', '<F2>']
  let k = copy(base)
  let k.key  = key
  call NERDTreeAddKeyMap(k)
endfor

function! MyNERDTreeClose()
  NERDTreeClose
endfunction
