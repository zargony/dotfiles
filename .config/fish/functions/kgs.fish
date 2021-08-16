function k --wraps kubectl --description 'kubectl get services shorthand'
    kubectl get services $argv
end
