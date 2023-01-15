# image-ubi8-ansible-rulebook

Use this repository to run `ansible-rulebook`, an event-driven automation tool, in a container.
The primary purpose of this image is to facilitate the development of a [custom rulebook plugin](https://ansible-rulebook.readthedocs.io/en/latest/sources.html#how-to-develop-a-custom-plugin).

## Overview

This repository contains the necessary instructions to build a container image that runs the `ansible-rulebook` command. The image is based on the Universal Base Image (UBI) 8 and is built using podman.

-   [ansible-rulebook](https://ansible-rulebook.readthedocs.io/en/latest/) documentation provides more information on the tool itself.

## Build Instructions

To build the container image, run the following command in the root of this repository:

``` bash
podman build -t ansible-rulebook .
```

## Usage

Example command to run `ansible-rulebook` using the container image:

``` bash
podman run --rm localhost/ansible-rulebook:latest ansible-rulebook -h
```

