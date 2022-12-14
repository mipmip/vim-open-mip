function! s:OpenInMIP()

  let l:fcommand = get(g:, 'mip_exec_path', "mip")

  if filereadable(expand("%"))
    let l:command = l:fcommand . " " . shellescape("%")
  endif

  execute ":silent! !" . l:command . "&"
  redraw!
endfunction

command! MIP call <SID>OpenInMIP()
