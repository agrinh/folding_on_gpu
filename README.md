# folding_on_gpu
Dockerfile for running folding@home on NVIDIA GPUs with OpenCL.

## Requirements
- `docker-compose`

## Usage
Copy [sample-config.xml](./sample-config.xml) to `config.xml` and modify the
values. Build and start with `docker-compose`:
```console
docker-compose up
```

To run on a remote host already configured with SSH, set the `DOCKER_HOST` env
first, e.g.:
```console
DOCKER_HOST=ssh://<username>@<host> docker-compose up
```
