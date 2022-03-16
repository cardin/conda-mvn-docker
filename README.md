Creates a Docker image that contains:

- Conda
- JDK
- Apache Maven

You can download it from https://hub.docker.com/r/cardinal4/conda-mvn

Source is at https://github.com/cardin/conda-mvn-docker

# Available Builds

| Conda Type      | JDK Type |
| --------------- | -------- |
| Miniconda (py2) | Temurin  |
| Miniforge (py3) | Temurin  |

# How this image differs from the official Maven, Temurin, and Miniforge3/Miniconda images?

- This is identical to the Miniforge3/Miniconda images, as they are used as the base layer
- Temurin and Maven are on `$PATH`, but that's all there is

# References

- https://github.com/conda-forge/miniforge-images
- https://github.com/docker-library/docs/blob/master/eclipse-temurin/README.md#supported-tags-and-respective-dockerfile-links
- https://github.com/carlossg/docker-maven
