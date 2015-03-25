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

   " neocomplcache
   NeoBundle 'Shougo/neocomplcache'
   " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
   " Use neocomplcache.
    let g:neocomplcache_enable_at_startup = 1
   " Use smartcase.
    let g:neocomplcache_enable_smart_case = 1
   " Set minimum syntax keyword length.
    let g:neocomplcache_min_syntax_length = 3
    let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
    " インデントに色を付けて見やすくする
    NeoBundle 'nathanaelkane/vim-indent-guides'
    "
    " vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
    let g:indent_guides_enable_on_vim_startup = 1
    
    " ファイルオープンを便利に
    NeoBundle 'Shougo/unite.vim'
    " Unite.vimで最近使ったファイルを表示できるようにする
    NeoBundle 'Shougo/neomru.vim'
    "
    " http://blog.remora.cx/2010/12/vim-ref-with-unite.html
    """"""""""""""""""""""""""""""
    " Unit.vimの設定
    """"""""""""""""""""""""""""""
    " 入力モードで開始する
    let g:unite_enable_start_insert=1
    " バッファ一覧
    noremap <C-P> :Unite buffer<CR>
    " ファイル一覧
    noremap <C-N> :Unite -buffer-name=file file<CR>
    " 最近使ったファイルの一覧
    noremap <C-Z> :Unite file_mru<CR>
    " sourcesを「今開いているファイルのディレクトリ」とする
    noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
    " ウィンドウを分割して開く
    au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
    au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
    " ウィンドウを縦に分割して開く
    au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
    au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
    " ESCキーを2回押すと終了する
    au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
    au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
    """"""""""""""""""""""""""""""
   " ファイルをtree表示してくれる
   NeoBundle 'scrooloose/nerdtree'
   "
   " Define dictionary.
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
