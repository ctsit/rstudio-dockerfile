# RStudio Dockerfile

This project contains a containerized RStudio environment with all REDCap Custodian dependencies bundled in as well as *testthat*, a R testing package. The image is built on push events to this repository, and the resulting image is used in GitHub Actions for STP and Custodian workflows.

Built images are pushed to https://github.com/ctsit/rstudio-dockerfile/pkgs/container/rstudio-ci

Images can be referenced in the ./.github/workflows/ files in repositoiores that need to use them.
