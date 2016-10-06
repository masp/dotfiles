set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

python << EOL
import vim, StringIO,sys
def PyExecReplace(line1,line2):
  r = vim.current.buffer.range(int(line1),int(line2))
  redirected = StringIO.StringIO()
  sys.stdout = redirected
  exec('\n'.join(r) + '\n')
  sys.stdout = sys.__stdout__
  output = redirected.getvalue().split('\n')
  r[:] = output[:-1] # the -1 is to remove the final blank line
  redirected.close()
EOL
command -range Pyer python3 PyExecReplace(<f-line1>,<f-line2>)
