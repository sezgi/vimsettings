au! BufNewFile,BufRead *.ini set filetype=ini
au! BufNewFile,BufRead *.md,*.markdown set filetype=markdown
au! BufNewFile,BufRead *.tac set filetype=python
au! BufNewFile,BufRead *.thor set filetype=ruby
au! BufNewFile,BufRead *.ru set filetype=ruby
au! BufNewFile,BufRead /etc/nginx/* set filetype=nginx
au! BufNewFile,BufRead *.template execute "doau filetypedetect BufNewFile,BufRead ".matchstr(expand("<afile>"), "^.*\\ze\\.")
au! BufNewFile,BufRead Classes/*.h set filetype=objc
au! BufNewFile,BufRead *.m set filetype=objc
