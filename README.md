Creates a Docker image that contains:

- Conda
- JDK
- Apache Maven

You can download it from https://hub.docker.com/r/cardinal4/conda-mvn

Source is at https://github.com/cardin/conda-mvn-docker

Where to get help:

- https://github.com/ContinuumIO/docker-images/tree/master/miniconda3
- https://github.com/conda-forge/miniforge-images
- https://github.com/carlossg/docker-maven

# Supported Tags

> _🌙 = EOL_  
> _I have not tested some of the builds. Beware especially of the EOL builds._

| Conda                | Distro         | JDK        | Maven       | Tags                             |
| -------------------- | -------------- | ---------- | ----------- | -------------------------------- |
| Miniconda3 4.10.3    | Debian 11 slim | Temurin 8  | Maven 3.8.5 | miniconda3-temurin8-3            |
| Miniconda3 4.10.3    | Debian 11 slim | Temurin 11 | Maven 3.8.5 | miniconda3-temurin11-3           |
| Miniconda3 4.10.3    | Debian 11 slim | Temurin 17 | Maven 3.8.5 | miniconda3-temurin17-3           |
| Miniconda3 4.10.3    | Alpine 3.14    | IBM Java 8 | Maven 3.8.5 | miniconda3.alpine-ibmjava8-3     |
| Miniconda3 4.10.3    | Alpine 3.14    | Temurin 11 | Maven 3.8.5 | miniconda3.alpine-temurin11-3    |
| Miniconda3 4.10.3    | Alpine 3.14    | Temurin 17 | Maven 3.8.5 | miniconda3.alpine-temurin17-3    |
| Miniforge3 4.12.0-0  | Ubuntu 20.04   | Temurin 8  | Maven 3.8.5 | miniforge3-temurin8-3            |
| Miniforge3 4.12.0-0  | Ubuntu 20.04   | Temurin 11 | Maven 3.8.5 | miniforge3-temurin11-3           |
| Miniforge3 4.12.0-0  | Ubuntu 20.04   | Temurin 17 | Maven 3.8.5 | miniforge3-temurin17-3, latest   |
| 🌙 Miniconda2 4.8.3  | Debian 11 slim | Temurin 8  | Maven 3.8.5 | miniconda2.slim-temurin8-3       |
| 🌙 Miniconda2 4.8.3  | Debian 11 slim | Temurin 11 | Maven 3.8.5 | miniconda2.slim-temurin11-3      |
| 🌙 Miniconda2 4.8.3  | Debian 11 slim | Temurin 17 | Maven 3.8.5 | miniconda2.slim-temurin17-3      |
| 🌙 Miniconda2 4.7.12 | 🌙 Debian 8.5  | Temurin 8  | Maven 3.8.5 | miniconda2.debian8-temurin8-3    |
| 🌙 Miniconda2 4.7.12 | 🌙 Debian 8.5  | Temurin 11 | Maven 3.8.5 | miniconda2.debian8-temurin11-3   |
| 🌙 Miniconda2 4.7.12 | 🌙 Debian 8.5  | Temurin 17 | Maven 3.8.5 | miniconda2.debian8-temurin7-3    |
| 🌙 Miniconda2 4.7.12 | 🌙 Alpine 3.9  | IBM Java 8 | Maven 3.8.5 | miniconda2.alpine3.9-ibmjava8-3  |
| 🌙 Miniconda2 4.7.12 | 🌙 Alpine 3.9  | Temurin 11 | Maven 3.8.5 | miniconda2.alpine3.9-temurin11-3 |
| 🌙 Miniconda2 4.7.12 | 🌙 Alpine 3.9  | Temurin 17 | Maven 3.8.5 | miniconda2.alpine3.9-temurin7-3  |

# How this image differs from the official Maven, Temurin, and Miniforge3/Miniconda images?

Miniforge3 & Miniconda3

- Identical, as it is used as the base layer

Miniconda (py2)

- Identical, as it is used as the base layer
- We also have an alternative, updated version which

  - Uses the latest Miniconda2 instead of Miniconda2 4.7.12
  - Uses the latest Debian instead of Debian 8.5

Temurin & Maven

- Temurin and Maven are on `$PATH`, but that's all there is

# References

- https://github.com/ContinuumIO/docker-images/tree/master/miniconda3
- https://github.com/conda-forge/miniforge-images
- https://github.com/docker-library/docs/blob/master/eclipse-temurin/README.md#supported-tags-and-respective-dockerfile-links
- https://github.com/carlossg/docker-maven
