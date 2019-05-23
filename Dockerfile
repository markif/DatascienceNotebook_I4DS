from jupyter/datascience-notebook

USER root

# libpq-dev -> postgres bindings
RUN sudo apt-get update && sudo apt-get install -y libpq-dev

USER jovyan
