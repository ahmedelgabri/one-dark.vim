" -----------------------------------------------------------------------------
" airline.vim theme for one-dark.vim
" Author: ahmedelgabri <ahmed@gabri.me>
" Source: https://github.com/geoffharcourt/one-dark.vim
" -----------------------------------------------------------------------------

let g:airline#themes#onedark#palette = {}

" Normal mode
let s:N1 = airline#themes#get_highlight2(['Function', 'fg'], ['FoldColumn', 'bg'], 'NONE', 'NONE')
let s:N2 = airline#themes#get_highlight2(['rubyInclude', 'fg'], ['StatusLine', 'bg'], 'NONE', 'NONE')
let s:N3 = airline#themes#get_highlight2(['FoldColumn', 'fg'], ['CursorLine', 'bg'], 'NONE', 'NONE')
let g:airline#themes#onedark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Insert mode
let s:I1 = airline#themes#get_highlight2(['FoldColumn', 'bg'], ['Function', 'fg'], 'NONE', 'NONE')
let s:I2 = s:N2
let s:I3 = s:N3
let g:airline#themes#onedark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

" Replace mode
let s:R1   = airline#themes#get_highlight2(['StatusLine', 'bg'], ['Statement', 'fg'], 'NONE', 'NONE')
let s:R2   = s:N2
let s:R3   = s:N3
let g:airline#themes#onedark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Visual mode
let s:V1 = airline#themes#get_highlight2(['StatusLine', 'bg'], ['Type', 'fg'], 'NONE', 'NONE')
let s:V2 = s:N2
let s:V3 = s:N3
let g:airline#themes#onedark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

" Inactive mode
let s:IA1 = airline#themes#get_highlight2(['LineNr', 'fg'], ['FoldColumn', 'bg'], 'NONE', 'NONE')
let s:IA2 = airline#themes#get_highlight2(['LineNr', 'fg'], ['StatusLine', 'bg'], 'NONE', 'NONE')
let s:IA3 = airline#themes#get_highlight2(['LineNr', 'fg'], ['CursorLine', 'bg'], 'NONE', 'NONE')
let g:airline#themes#onedark#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Accents
let s:A = airline#themes#get_highlight('WarningMsg')
let g:airline#themes#onedark#palette.accents = { 'red': s:A }

" Tabline
let s:T = airline#themes#get_highlight('Normal')
let s:TE = airline#themes#get_highlight2(['StatusLine', 'bg'], ['String', 'fg'])
let g:airline#themes#onedark#palette.tabline = {
    \ 'airline_tab'          : s:T,
    \ 'airline_tabsel'       : s:I1,
    \ 'airline_tabtype'      : s:T,
    \ 'airline_tabfill'      : s:T,
    \ 'airline_tabhid'       : s:T,
    \ 'airline_tabmod'       : s:TE,
    \ 'airline_tabmod_unsel' : s:R1
    \ }

" Errors
let s:ER = airline#themes#get_highlight2(['StatusLine', 'bg'], ['Error', 'fg'])
let g:airline#themes#onedark#palette.normal.airline_error = [
      \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
      \ ]

let g:airline#themes#onedark#palette.insert.airline_error =
    \ g:airline#themes#onedark#palette.normal.airline_error

let g:airline#themes#onedark#palette.visual.airline_error =
    \ g:airline#themes#onedark#palette.normal.airline_error

let g:airline#themes#onedark#palette.replace.airline_error =
    \ g:airline#themes#onedark#palette.normal.airline_error

" Warnings
let s:WI = airline#themes#get_highlight2(['StatusLine', 'bg'], ['IncSearch', 'bg'], 'bold')
let g:airline#themes#onedark#palette.normal.airline_warning = [
      \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
      \ ]

let g:airline#themes#onedark#palette.insert.airline_warning =
    \ g:airline#themes#onedark#palette.normal.airline_warning

let g:airline#themes#onedark#palette.visual.airline_warning =
    \ g:airline#themes#onedark#palette.normal.airline_warning

let g:airline#themes#onedark#palette.replace.airline_warning =
    \ g:airline#themes#onedark#palette.normal.airline_warning

