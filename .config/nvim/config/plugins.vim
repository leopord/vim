for file in split(glob('$HOME/.config/nvim/config/plugins/*.vim'), '\n')
    exe 'source' file
endfor
