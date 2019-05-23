# Install Docker

See https://docs.docker.com/install


# Docker Hub

Images are stored on Docker Hub under the organization `i4ds`. Therefore you need to create an account on `https://hub.docker.com/` and ask (e.g. Fabian Märki) for access to `i4ds`.

# Setup DataScience Environment  

Setup a custom DataScience environment with i4ds specific dependencies.

By using the provided Dockerfile:

```bash
docker build --no-cache=true -t i4ds/datascience-notebook .

docker login
docker push i4ds/datascience-notebook
```


By using the command line:

```bash
JUPYTER_FILES=$(pwd)
docker run --name datascience-notebook -p 8888:8888 -e GRANT_SUDO=yes -v "${JUPYTER_FILES}":/home/jovyan/work -d jupyter/datascience-notebook start-notebook.sh --NotebookApp.token=''

docker exec -it --user root datascience-notebook start.sh
# install postgres driver
sudo apt-get update && sudo apt-get install -y libpq-dev
exit

docker commit -m "I4DS Datascience Notebook" datascience-notebook i4ds/datascience-notebook:latest

docker login
docker push i4ds/datascience-notebook
```
