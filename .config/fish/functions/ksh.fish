function ksh
    kubectl run -i -t --rm --image=alpine --restart=Never shell $argv
end
