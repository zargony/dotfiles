function kpsql --wraps psql --description 'kubectl exec psql shell shorthand'
    if not contains -- --help $argv; and not contains -- -U $argv; and not contains -- --username $argv
        set -- argv -U postgres $argv
    end
    kubectl -n core exec statefulset/postgres -i -t -- psql $argv
end
