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

To run the `ansible-rulebook` command via the container, use the following command:

``` bash
podman run --rm localhost/ansible-rulebook:latest ansible-rulebook -h
```

This will give you the help menu for the `ansible-rulebook` command. You can also pass in your own arguments and flags as necessary.

Please note that the `--rm` flag is added to remove the container after it exits. If you want to keep the container for further usage, remove this flag.

