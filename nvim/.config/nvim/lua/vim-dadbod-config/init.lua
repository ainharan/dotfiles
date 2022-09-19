vim.cmd [[

func! DBExe(...)
	if !a:0
		let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
		return 'g@'
	endif
	let sel_save = &selection
	let &selection = "inclusive"
	let reg_save = @@

	if a:1 == 'char'	" Invoked from Visual mode, use gv command.
		silent exe 'normal! gvy'
	elseif a:1 == 'line'
		silent exe "normal! '[V']y"
	else
		silent exe 'normal! `[v`]y'
	endif

	execute "DB " . @@

	let &selection = sel_save
	let @@ = reg_save
endfunction
" stored locally a credentials file which the function use
" down below is just an example to the format
let g:dbs = {
\  'test postgres': 'postgresql://postgres:12345@localhost/postgres'
\ }

let g:db_ui_table_helpers = {
\   'postgresql': {
\     'List': 'select * from "{table}" order by id asc',
\     'Test': 'select * from "{table}" order by id asc'
\   }
\ }


" \  'postgres template': 'postgresql://username:password@localhost/database',
" \  'oracle template': 'oracle:username/password@localhost:port/database'
"
"
" obsolete since dbui takes care of it
" let g:dadbods = []
" let dbitem = {
"         \"name": "Test Postgres DB",
"         \"url": "postgresql://postgres:12345@localhost/postgres"
"         \}

" call add(g:dadbods, dbitem)

" let opts = {'title':'Select Database', 'w': 50, 'h':10}

" function! OpenMenuDBSelect(list, opts, fun) 
"     let i = quickui#listbox#open(map(copy(a:list), {k,v -> v.name}), a:opts)
"     if i != -1
"         call a:fun(a:list[i].name, a:list[i].url)
"     endif
" endfunction

" command! DBSelect :call OpenMenuDBSelect(g:dadbods, opts, function('DBSelected'))

" func! DBSelected(name, url)
"     let b:db = a:url
"     echomsg 'DB ' . a:name . ' is selected.'
" endfunc
]]

