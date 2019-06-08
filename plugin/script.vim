function! HelloFunc()
  echo "Hello World"
endfunction

command! Echo call HelloFunc()
