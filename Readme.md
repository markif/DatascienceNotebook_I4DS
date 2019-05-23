# Install Docker

See https://docs.docker.com/install


# Docker Hub

Images are stored on Docker Hub under the organization `i4ds`. Therefore you need to create an account on `https://hub.docker.com/` and ask (e.g. Fabian Märki) for access to `i4ds`.

# Setup DataScience Environment  

Setup a custom DataScience environment with i4ds specific dependencies.

```bash
docker build --no-cache=true -t i4ds/datascience-notebook .

docker login
docker push i4ds/datascience-notebook
```
