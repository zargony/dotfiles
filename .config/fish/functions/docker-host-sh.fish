function docker-host-sh --description 'Docker host shell'
    docker run -i -t --rm --privileged --pid=host busybox nsenter -t1 -m -u -i -n
end
