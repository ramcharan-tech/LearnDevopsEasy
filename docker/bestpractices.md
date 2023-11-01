1. .dockerignore file https://devopscube.com/reduce-docker-image-size/
2. use copy over add (tar extraction,cache invalidation would trigger rebuild, permisssions preserved(!755),file url support)
3. multi stage builds
4. reduce multi layers which are cached (--nocache)
5. use ONBUILD
6. change user (RUN adduser -D -u 1000 appuser && USER appuser)
7. check container health
    HEALTHCHECK --interval=5s \\
            --timeout=5s \\
            CMD curl --fail <http://localhost:5000/health> || exit 1
8. use shell form (instead of exec form)
9. metadata instructions (LABEL maintainer="Your Name <youremail@example.com>" EXPOSE 80) (docker image is tar file with metadata)
10. check image vulnerabilities
11. minimilastic distroless image is scratch

/var/lib/docker/aufs/diff, docker history , docker inspect, use time with experimental true in daemon.json /etc/docker