function ksh --wraps kubectl --description 'kubectl run alpine shell shorthand'
    kubectl run -i -t --rm --image=alpine --restart=Never shell $argv
end
