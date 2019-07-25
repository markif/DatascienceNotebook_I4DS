from jupyter/datascience-notebook:abdb27a6dfbb

USER root

# libpq-dev -> postgres library
# *odbc* -> odbc bindings for R
# python-influxdb -> influx bindings
# graphviz* -> dependency of eralchemy
RUN sudo apt-get update && sudo apt-get install -y libpq-dev unixodbc unixodbc-dev odbc-postgresql python-influxdb graphviz graphviz-dev

USER jovyan

# psycopg2 -> postgres-python bindings
# ipython-sql -> sql magic for python
# influxdb -> the influxDB dependencies
# twine -> upload python packages
# eralchemy -> generat ER Models
# jsonpath-ng -> for jsonpath
RUN pip install psycopg2 ipython-sql influxdb twine eralchemy jsonpath-ng
