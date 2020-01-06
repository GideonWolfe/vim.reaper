" REQUIRED FOR LAZYGIT
" Creates a floating window with a most recent buffer to be used
function! CreateCenteredFloatingWindow()
    let width = float2nr(&columns * 0.6)
    let height = float2nr(&lines * 0.6)
    let top = ((&lines - height) / 2) - 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf
endfunction

" When term starts, auto go into insert mode
autocmd TermOpen * startinsert

" Turn off line numbers etc
autocmd TermOpen * setlocal listchars= nonumber norelativenumber

function! OpenTerm(cmd)
    call CreateCenteredFloatingWindow()
    call termopen(a:cmd, { 'on_exit': function('OnTermExit') })
endfunction

" Open Project
let s:project_open = 0
function! ToggleProject()
    if s:project_open
        bd!
        let s:project_open = 0
    else
        call OpenTerm('tmuxinator-fzf-start.sh')
        let s:project_open = 1
    endif
endfunction

let s:scratch_open = 0
function! ToggleScratchTerm()
    if s:scratch_open
        bd!
        let s:scratch_open = 0
    else
        call OpenTerm('bash')
        let s:scratch_open = 1
    endif
endfunction

let s:lazygit_open = 0
function! ToggleLazyGit()
    if s:lazygit_open
        bd!
        let s:lazygit_open = 0
    else
        call OpenTerm('lazygit')
        let s:lazygit_open = 1
    endif
endfunction

let s:lazydocker_open = 0
function! ToggleLazyDocker()
    if s:lazydocker_open
        bd!
        let s:lazydocker_open = 0
    else
        call OpenTerm('lazydocker')
        let s:lazydocker_open = 1
    endif
endfunction


function! OnTermExit(job_id, code, event) dict
    if a:code == 0
        bd!
    endif
endfunction

" REQUIRED FOR LAZYGIT
