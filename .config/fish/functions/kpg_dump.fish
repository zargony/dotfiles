function kpg_dump --wraps pg_dump --description 'kubectl exec pg_dump shell shorthand'
    if not contains -- --help $argv; and not contains -- -U $argv; and not contains -- --username $argv
        set -- argv -U postgres $argv
    end
    kubectl -n core exec statefulset/postgres -i -t -- pg_dump $argv
end
