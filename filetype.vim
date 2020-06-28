" my filetype file
if exists("did_load_my_filetypes")
  finish
endif

augroup filetypedetect
  autocmd BufNewFile,BufRead  .tern-project     setfiletype json
  autocmd BufNewFile,BufRead  .jsbeautifyrc     setfiletype json
  autocmd BufNewFile,BufRead  .eslintrc         setfiletype json
  autocmd BufNewFile,BufRead  .jscsrc           setfiletype json

  autocmd BufNewFile,BufRead  npm-debug.log      setfiletype npm-debug-log
  autocmd BufNewFile,BufRead  .npmignore         setfiletype conf
  autocmd BufNewFile,BufRead  npmrc,.npmrc       setfiletype npmrc


  autocmd BufNewFile,BufRead  *.cjson           setfiletype jsonc
  autocmd BufNewFile,BufRead  coc-settings.json setfiletype jsonc
  autocmd BufNewFile,BufRead  config*.json       setfiletype jsonc

  autocmd BufNewFile,BufRead  *.wl              setfiletype mma
  autocmd BufNewFile,BufRead  *.wls             setfiletype mma

  autocmd BufNewFile,BufRead  *.gitignore       setfiletype gitignore

  autocmd BufNewFile,BufRead *.lmp              setfiletype lammps
  autocmd BufNewFile,BufRead *.lammps           setfiletype lammps
  autocmd BufNewFile,BufRead in.*               setfiletype lammps

  autocmd BufNewFile,BufRead *.log              setfiletype log
  autocmd BufNewFile,BufRead *_log              setfiletype log

  autocmd BufNewFile,BufRead *.clang-format     setfiletype yaml

  autocmd BufNewFile,BufRead *.masm             setfiletype masm

  autocmd BufNewFile,BufRead *.pro              setfiletype qmake

  autocmd BufNewFile,BufRead *.toml,Gopkg.lock,Cargo.lock,*/.cargo/config,*/.cargo/credentials,Pipfile setfiletype toml

  autocmd BufNewFile,BufRead cgdbrc             setfiletype vim
augroup END

let did_load__my_filetypes=1
