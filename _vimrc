" 行番号表示
set number
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent 


"---------------------------"
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))
  
  " neobundle自体をneobundleで管理
  NeoBundleFetch 'Shougo/neobundle.vim'
   
   " 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

   "" neocomplcache
   NeoBundle 'Shougo/neocomplcache'
   " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
   " " Use neocomplcache.
    let g:neocomplcache_enable_at_startup = 1
   " " Use smartcase.
    let g:neocomplcache_enable_smart_case = 1
   " " Set minimum syntax keyword length.
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
   "
   " " Define dictionary.
    let g:neocomplcache_dictionary_filetype_lists = {
        \ 'default' : ''
            \ }
   "
   "         " Plugin key-mappings.
            inoremap <expr><C-g>     neocomplcache#undo_completion()
            inoremap <expr><C-l>     neocomplcache#complete_common_string()
   "
   "         " Recommended key-mappings.
   "         " <CR>: close popup and save indent.
            inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
            function! s:my_cr_function()
              return neocomplcache#smart_close_popup() . "\<CR>"
              endfunction
   "           " <TAB>: completion.
              inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
   "           " <C-h>, <BS>: close popup and delete backword char.
              inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
              inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
              inoremap <expr><C-y>  neocomplcache#close_popup()
              inoremap <expr><C-e>  neocomplcache#cancel_popup()

    call neobundle#end()
     
     " Required:
     filetype plugin indent on
      
      " 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
      " 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
      NeoBundleCheck
       
       "-------------------------
       " End Neobundle Settings.
       "-------------------------
