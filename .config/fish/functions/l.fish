function l --wraps ls --description 'list files'
    exa --color=auto --color-scale -la $argv
end
