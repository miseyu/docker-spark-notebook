FROM jupyter/base-notebook

USER root

# Notebook
RUN rm -rf /var/lib/apt/lists/lock
RUN rm -rf /var/lib/dpkg/lock
COPY ./toree-0.2.0.dev1.tar.gz /tmp/
RUN pip --no-cache-dir install /tmp/toree-0.2.0.dev1.tar.gz && \
    jupyter toree install

EXPOSE 8888
