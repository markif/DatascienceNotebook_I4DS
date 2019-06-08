from jupyter/datascience-notebook:abdb27a6dfbb

USER root

# libpq-dev -> postgres library
# *odbc* -> odbc bindings for R
# python-influxdb -> influx bindings
RUN sudo apt-get update && sudo apt-get install -y libpq-dev unixodbc unixodbc-dev odbc-postgresql python-influxdb

USER jovyan

# psycopg2 -> postgres-python bindings
# ipython-sql -> sql magic for python
# influxdb -> influxDB
RUN pip install psycopg2 && pip install ipython-sql && pip install influxdb
