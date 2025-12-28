# Bazel Fundamentals

This repository contains the source code of the [Bazel Fundamentals Pluralsight course](https://www.pluralsight.com/courses/bazel-fundamentals) that was published on December 2022.

## Supported platforms

The code from this repository has been tested with Bazel 5 LTS + Ubuntu 20.04, and Bazel 5 LTS + Ubuntu 22.04.
However, Bazel supports macOS, Windows and Linux.

## Known limitations

Since the course was released, newer versions of Bazel and Python have been released. The following versions are known to not be supported:

- Python 3.12 and newer is not supported
- Bazel 8 LTS and newer is not supported

Whenever I do an update of the course, the plan is to also update the source code provided to support these platforms.

## Changelog

- [v2022.12.1](https://github.com/limdor/bazel-fundamentals/releases/tag/v2022.12.1)
  - Adds a docker image that can be used to run and play around with the code.
  - Upgrade rules_python from 0.4.0 to 0.9.0 to avoid a building issue in certain situations due to a rules_python bug.
  - Add automatic checks in this repository. This change has no effect for the user apart from reducing the risk of me breaking the code when introducing a change.
- [v2022.12.0](https://github.com/limdor/bazel-fundamentals/releases/tag/v2022.12.0)
  - Initial version of the source code released with the course.
