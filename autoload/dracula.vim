" Palette: {{{

let g:dracula#palette_dark           = {}
let g:dracula#palette_dark.fg        = ['#F8F8F2', 253]

let g:dracula#palette_dark.bglighter = ['#424450', 238]
let g:dracula#palette_dark.bglight   = ['#343746', 237]
let g:dracula#palette_dark.bg        = ['#282A36', 236]
let g:dracula#palette_dark.bgdark    = ['#21222C', 235]
let g:dracula#palette_dark.bgdarker  = ['#191A21', 234]

let g:dracula#palette_dark.comment   = ['#6272A4',  61]
let g:dracula#palette_dark.selection = ['#44475A', 239]
let g:dracula#palette_dark.subtle    = ['#424450', 238]

let g:dracula#palette_dark.cyan      = ['#8BE9FD', 117]
let g:dracula#palette_dark.green     = ['#50FA7B',  84]
let g:dracula#palette_dark.orange    = ['#FFB86C', 215]
let g:dracula#palette_dark.pink      = ['#FF79C6', 212]
let g:dracula#palette_dark.purple    = ['#BD93F9', 141]
let g:dracula#palette_dark.red       = ['#FF5555', 203]
let g:dracula#palette_dark.yellow    = ['#F1FA8C', 228]

"
" ANSI
"
let g:dracula#palette_dark.color_0  = '#21222C'
let g:dracula#palette_dark.color_1  = '#FF5555'
let g:dracula#palette_dark.color_2  = '#50FA7B'
let g:dracula#palette_dark.color_3  = '#F1FA8C'
let g:dracula#palette_dark.color_4  = '#BD93F9'
let g:dracula#palette_dark.color_5  = '#FF79C6'
let g:dracula#palette_dark.color_6  = '#8BE9FD'
let g:dracula#palette_dark.color_7  = '#F8F8F2'
let g:dracula#palette_dark.color_8  = '#6272A4'
let g:dracula#palette_dark.color_9  = '#FF6E6E'
let g:dracula#palette_dark.color_10 = '#69FF94'
let g:dracula#palette_dark.color_11 = '#FFFFA5'
let g:dracula#palette_dark.color_12 = '#D6ACFF'
let g:dracula#palette_dark.color_13 = '#FF92DF'
let g:dracula#palette_dark.color_14 = '#A4FFFF'
let g:dracula#palette_dark.color_15 = '#FFFFFF'
let g:dracula#palette_light           = {}
let g:dracula#palette_light.fg        = ['#282A36', 236]

let g:dracula#palette_light.bglighter = ['#424450', 238]
let g:dracula#palette_light.bglight   = ['#343746', 237]
let g:dracula#palette_light.bg        = ['#F8F8F2', 253]
let g:dracula#palette_light.bgdark    = ['#EAEBF9', 231]
let g:dracula#palette_light.bgdarker  = ['#191A21', 234]

let g:dracula#palette_light.comment   = ['#7E8EC2', 110]
let g:dracula#palette_light.selection = ['#C5C8DE', 189]
let g:dracula#palette_light.subtle    = ['#424450', 238]

let g:dracula#palette_light.cyan      = ['#007E90', 31]
let g:dracula#palette_light.green     = ['#008504', 34]
let g:dracula#palette_light.orange    = ['#A0651B', 136]
let g:dracula#palette_light.pink      = ['#C13F8E', 169]
let g:dracula#palette_light.purple    = ['#855FBF', 140]
let g:dracula#palette_light.red       = ['#D82F39', 203]
let g:dracula#palette_light.yellow    = ['#6C7908', 100]


"
" ANSI
"
let g:dracula#palette_light.color_0  = '#EAEBF9'
let g:dracula#palette_light.color_1  = '#D82F39'
let g:dracula#palette_light.color_2  = '#008504'
let g:dracula#palette_light.color_3  = '#6C7908'
let g:dracula#palette_light.color_4  = '#855FBF'
let g:dracula#palette_light.color_5  = '#C13F8E'
let g:dracula#palette_light.color_6  = '#007E90'
let g:dracula#palette_light.color_7  = '#F8F8F2'
let g:dracula#palette_light.color_8  = '#7E8EC2'
let g:dracula#palette_light.color_9  = '#CB4046'
let g:dracula#palette_light.color_10 = '#008525'
let g:dracula#palette_light.color_11 = '#727724'
let g:dracula#palette_light.color_12 = '#8762AE'
let g:dracula#palette_light.color_13 = '#B34B97'
let g:dracula#palette_light.color_14 = '#157F80'
let g:dracula#palette_light.color_15 = '#727272'

let g:dracula#palette = g:dracula#palette_dark

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! dracula#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'dracula'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
