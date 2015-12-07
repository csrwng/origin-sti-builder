FROM openshift/origin-release
LABEL io.openshift.s2i.scripts-url=image:///usr/libexec/s2i
ENV STI_SCRIPTS_PATH=/usr/libexec/s2i
COPY s2i/bin $STI_SCRIPTS_PATH
RUN chown 1001 /go/src/github.com/openshift/origin &&  \
    chown 1001 /openshifttmp
USER 1001
