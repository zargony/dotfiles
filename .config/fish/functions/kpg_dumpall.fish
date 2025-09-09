function kpg_dumpall --wraps pg_dumpall --description 'kubectl exec pg_dumpall shell shorthand'
    if not contains -- --help $argv; and not contains -- -U $argv; and not contains -- --username $argv
        set -- argv -U postgres $argv
    end
    kubectl -n core exec statefulset/postgres -i -t -- pg_dumpall $argv
end
