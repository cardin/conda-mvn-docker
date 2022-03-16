Creates a Docker image that contains:

- Conda
- JDK
- Apache Maven

You can download it from https://hub.docker.com/r/cardinal4/conda-mvn

Source is at https://github.com/cardin/conda-mvn-docker

Where to get help:

- https://github.com/conda-forge/miniforge-images
- https://github.com/carlossg/docker-maven

# Supported Tags

| Conda               | Distro         | JDK        | Maven     | Tags                                              |
| ------------------- | -------------- | ---------- | --------- | ------------------------------------------------- |
| Miniconda2 4.7.12   | Debian 8.5     | Temurin 8  | Maven 3.8 | miniconda.4.7.12-temurin8-3.8                     |
| Miniconda2 4.7.12   | Debian 8.5     | Temurin 11 | Maven 3.8 | miniconda.4.7.12-temurin11-3.8                    |
| Miniconda2 4.7.12   | Debian 8.5     | Temurin 17 | Maven 3.8 | miniconda.4.7.12-temurin7-3.8                     |
| Miniconda2 4.8.3    | Debian 11 slim | Temurin 8  | Maven 3.8 | miniconda2.py27.4.8.3-temurin8-3.8-debian11.slim  |
| Miniconda2 4.8.3    | Debian 11 slim | Temurin 11 | Maven 3.8 | miniconda2.py27.4.8.3-temurin11-3.8-debian11.slim |
| Miniconda2 4.8.3    | Debian 11 slim | Temurin 17 | Maven 3.8 | miniconda2.py27.4.8.3-temurin17-3.8-debian11.slim |
| Miniconda3 4.10.3   | Debian 11 slim | Temurin 8  | Maven 3.8 | miniconda3.4.10.3.p1-temurin8-3.8                 |
| Miniconda3 4.10.3   | Debian 11 slim | Temurin 11 | Maven 3.8 | miniconda3.4.10.3.p1-temurin11-3.8                |
| Miniconda3 4.10.3   | Debian 11 slim | Temurin 17 | Maven 3.8 | miniconda3.4.10.3.p1-temurin17-3.8                |
| Miniforge3 4.11.0-4 | Ubuntu 20.04   | Temurin 8  | Maven 3.8 | miniforge3.4.11.0.4-temurin8-3.8                  |
| Miniforge3 4.11.0-4 | Ubuntu 20.04   | Temurin 11 | Maven 3.8 | miniforge3.4.11.0.4-temurin11-3.8                 |
| Miniforge3 4.11.0-4 | Ubuntu 20.04   | Temurin 17 | Maven 3.8 | miniforge3.4.11.0.4-temurin17-3.8, latest         |

# How this image differs from the official Maven, Temurin, and Miniforge3/Miniconda images?

Miniforge3 & Miniconda3

- Identical, as it is used as the base layer

Miniconda (py2)

- Identical, as it is used as the base layer
- We also have an alternative, updated version which

  - Uses Miniconda2 4.8.3 instead of Miniconda2 4.7.12
  - Uses Debian 11 slim instead of Debian 8.5

Temurin & Maven

- Temurin and Maven are on `$PATH`, but that's all there is

# References

- https://github.com/conda-forge/miniforge-images
- https://github.com/docker-library/docs/blob/master/eclipse-temurin/README.md#supported-tags-and-respective-dockerfile-links
- https://github.com/carlossg/docker-maven
