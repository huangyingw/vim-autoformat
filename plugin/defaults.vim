if !exists("g:formatprg_cs") | let g:formatprg_cs = "astyle" | endif
if !exists("g:formatprg_args_expr_cs") && !exists("g:formatprg_args_cs")
  let g:formatprg_args_expr_cs = '"--mode=cs --style=ansi --indent-namespaces -pcH".(&expandtab ? "s".&shiftwidth : "t")'
endif

if !exists("g:formatprg_c") | let g:formatprg_c = "astyle" | endif
if !exists("g:formatprg_args_expr_c") && !exists("g:formatprg_args_c")
  let g:formatprg_args_expr_c = '"--mode=c --style=ansi -pcH".(&expandtab ? "s".&shiftwidth : "t")'
endif

if !exists("g:formatprg_cpp") | let g:formatprg_cpp = "astyle" | endif
if !exists("g:formatprg_args_expr_cpp")  && !exists("g:formatprg_args_cpp")
  let g:formatprg_args_expr_cpp = '"--mode=c --style=ansi -pcH".(&expandtab ? "s".&shiftwidth : "t")'
endif

if !exists("g:formatprg_vala") | let g:formatprg_vala = "astyle" | endif
if !exists("g:formatprg_args_expr_vala")  && !exists("g:formatprg_args_vala")
  let g:formatprg_args_expr_vala = '"--mode=java -fxejoO -y -t2 --style=java -pcH".(&expandtab ? "s".&shiftwidth : "t")'
endif

if !exists("g:formatprg_java") | let g:formatprg_java = "astyle" | endif
if !exists("g:formatprg_args_expr_java")  && !exists("g:formatprg_args_java")
  let s:hostname = substitute(system("hostname"), '\n', '', '')
  if s:hostname == "huangyingw-uuid.local"
    let g:formatprg_args_expr_java = '"--mode=java -nfxejoO -y  --max-code-length=80 -s2 --style=java -pcH".(&expandtab ? "s".&shiftwidth : "t")'
  else
    let g:formatprg_args_expr_java = '"--mode=java -nfxejoO -y  --max-code-length=150 -s2 --style=java -pcH".(&expandtab ? "s".&shiftwidth : "t")'
  endif
endif

if !exists("g:formatprg_python") | let g:formatprg_python = "autopep8" | endif
if !exists("g:formatprg_args_expr_python")  && !exists("g:formatprg_args_python")
  if has("unix")
    let s:uname = substitute(system("uname"), '\n', '', '')
    if s:uname == "Darwin"
      let g:formatprg_args_expr_python = '"--in-place %:p ".(&textwidth ? "--max-line-length=".&textwidth : "")'
    else
      let g:formatprg_args_expr_python = '"/dev/stdin ".(&textwidth ? "--max-line-length=".&textwidth : "")'
    endif
  endif
endif

if !exists("g:formatprg_xml") | let g:formatprg_xml = "tidy" | endif
if !exists("g:formatprg_args_expr_xml")  && !exists("g:formatprg_args_xml") 
  let g:formatprg_args_expr_xml = '"-q -xml --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -wrap ".&textwidth'
endif

if !exists("g:formatprg_xhtml") | let g:formatprg_xhtml = "tidy" | endif
if !exists("g:formatprg_args_expr_xhtml")  && !exists("g:formatprg_args_xhtml")
  let g:formatprg_args_expr_xhtml = '"-q --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -asxhtml -wrap ".&textwidth'
endif

if has("unix")
  let s:uname = substitute(system("uname"), '\n', '', '')
  if s:uname == "Darwin"
    if !exists("g:formatprg_html") | let g:formatprg_html = "tidy" | endif
    if !exists("g:formatprg_args_expr_html")  && !exists("g:formatprg_args_html")
      let g:formatprg_args_expr_html = '"-q --show-errors 0 --show-warnings 0 --force-output --indent auto --indent-spaces ".&shiftwidth." --vertical-space yes --tidy-mark no -asxhtml -wrap ".&textwidth' 
    endif
  else
    if !exists("g:formatprg_html") | let g:formatprg_html = "html-beautify" | endif
    if !exists("g:formatprg_args_expr_html")  && !exists("g:formatprg_args_html")
      let g:formatprg_args_expr_html = '"-f - -s ".&shiftwidth'
    endif
  endif
endif

if !exists("g:formatprg_javascript") | let g:formatprg_javascript = "js-beautify" | endif
if !exists("g:formatprg_args_expr_javascript") && !exists("g:formatprg_args_javascript")
  let g:formatprg_args_expr_javascript = '"-f -i -".(&expandtab ? "s ".&shiftwidth : "t")'
endif
