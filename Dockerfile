from jupyter/datascience-notebook

USER root

# libpq-dev -> postgres library
RUN sudo apt-get update && sudo apt-get install -y libpq-dev

USER jovyan

# psycopg2 -> postgres-python bindings
# ipython-sql -> sql magic for python
RUN pip install psycopg2 && pip install ipython-sql
