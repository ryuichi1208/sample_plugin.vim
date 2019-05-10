function! GetRandom(min, max)
  return reltime()[1] % (a:max - a:min + 1) + a:min
endfunction

function! GetRandomDate()
  return GetRandom(1980, 2017) . '-' . GetRandom(1, 12) . '-' . GetRandom(1, 28)
endfunction

function! GetRandomDateTime()
  return GetRandomDate() . ' ' . GetRandom(0, 23) . ':' . GetRandom(0, 59) . ':' . GetRandom(0, 59)
endfunction

function! InsertRandomDateTime()
  let datetime = GetRandomDateTime()
  execute ":normal a" . datetime
endfunction

command! RandDateTime call InsertRandomDateTime()
