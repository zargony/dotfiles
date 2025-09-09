function kpsql --wraps psql --description 'kubectl exec psql shell shorthand'
    kubectl -n core exec deployment/postgres -i -t -- psql -U postgres $argv
end
