function k --wraps kubectl --description 'kubectl get pods shorthand'
    kubectl get pods $argv
end
