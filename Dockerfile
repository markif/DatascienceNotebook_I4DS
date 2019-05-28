from jupyter/datascience-notebook:abdb27a6dfbb

USER root

# libpq-dev -> postgres library
RUN sudo apt-get update && sudo apt-get install -y libpq-dev unixodbc unixodbc-dev odbc-postgresql

USER jovyan

# psycopg2 -> postgres-python bindings
# ipython-sql -> sql magic for python
RUN pip install psycopg2 && pip install ipython-sql
