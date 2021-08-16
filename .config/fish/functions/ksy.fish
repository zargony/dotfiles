function k --wraps kubectl --description 'kubectl kube-system shorthand'
    kubectl -n kube-system $argv
end
