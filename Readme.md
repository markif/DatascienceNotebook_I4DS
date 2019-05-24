# Install Docker

See https://docs.docker.com/install


# Docker Hub

Images are stored on Docker Hub under the organization `i4ds`. Therefore you need to create an account on `https://hub.docker.com/` and ask (e.g. Fabian Märki) for access to `i4ds`.

# Setup DataScience Environment 

Modify the [Dockerfile](Dockerfile) according your needs.

Build the DataScience environment with I4DS specific dependencies and upload it to Docker Hub.

```bash
docker build --no-cache=true -t i4ds/datascience-notebook .

docker login
docker push i4ds/datascience-notebook
```

# Run Jupyter Notebook

Run the Jupyter Notebook with disabled authentication (not a recommended practice) as a background process.

```bash
# set the path to your Jupyter Notebook files
JUPYTER_FILES=$PWD
docker run --name datascience-notebook --net=dbnet -p 8888:8888 -v "$JUPYTER_FILES":/home/jovyan/work -d i4ds/datascience-notebook start-notebook.sh --NotebookApp.token=''
# start your browser
firefox http://127.0.0.1:8888
```

Run the Jupyter Notebook with authentication (see console output for the url to use in your browser).

```bash
# set the path to your Jupyter Notebook files
JUPYTER_FILES=$PWD
docker run --name datascience-notebook --net=dbnet -p 8888:8888 -v "$JUPYTER_FILES":/home/jovyan/work -it --rm i4ds/datascience-notebook
```

Run a Jupyter Hub with authentication (see console output for the url to use in your browser).

```bash
# set the path to your Jupyter Notebook files
JUPYTER_FILES=$PWD
docker run --name datascience-notebook --net=dbnet -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "$JUPYTER_FILES":/home/jovyan/work -it --rm i4ds/datascience-notebook
```
