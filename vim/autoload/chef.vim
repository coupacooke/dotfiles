function! SyntaxCheckers_chef_foodcritic_IsAvailable()
    return executable('foodcritic')
endfunction
 
function! SyntaxCheckers_chef_foodcritic_GetLocList()
    " let exe = expand(g:syntastic_ruby_exec)
    " if !has('win32')
    "     let exe = 'RUBYOPT= ' . exe
    " endif
 
    let makeprg = syntastic#makeprg#build({
                \ 'exe': 'foodcritic',
                \ 'args': '' })
 
    " let errorformat = '%-G%.%#warning: %\(possibly %\)%\?useless use of == in void context'
    " FC023: Prefer conditional attributes: ./recipes/config.rb:49
    let errorformat = '%n: %m: %f:%l'
 
    return SyntasticMake({ 'makeprg': makeprg, 'errorformat': errorformat })
endfunction
 
call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'chef',
    \ 'name': 'foodcritic'})
