FROM asciidoctor/docker-asciidoctor

LABEL maintainer="frm.adiputra@gmail.com"

ARG localdev_group_id=1000
ARG localdev_user_id=1000

RUN addgroup \
        -g ${localdev_group_id} \
        localdev \
    && adduser -D \
        -s /bin/bash \
        -G localdev \
        -u ${localdev_user_id} \
        localdev

WORKDIR /home/localdev/workspace
VOLUME /home/localdev/workspace
USER localdev

CMD ["/bin/bash"]
