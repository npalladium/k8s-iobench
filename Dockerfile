FROM bitnami/minideb:bullseye
ARG PHORONIX_DEB "phoronix-test-suite_10.8.4_all.deb"
RUN install_packages stress fio sysstat bonnie++ postmark ioping wget jq

COPY ./fio/ /fio/
WORKDIR /fio/
ENTRYPOINT ["bash", "/fio/run.sh"]
