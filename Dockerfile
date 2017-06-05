FROM jupyter/base-notebook

# Notebook
COPY ./toree-0.2.0.dev1.tar.gz /tmp/
RUN pip --no-cache-dir install /tmp/toree-0.2.0.dev1.tar.gz && \
    jupyter toree install

EXPOSE 8888
