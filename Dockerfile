FROM rocker/tidyverse:4.3.3
LABEL maintainer="mbentz@ufl.edu"

WORKDIR /home/rocker

RUN apt update -y && apt install -y libmariadb-dev libmariadb-dev-compat
RUN apt install -y --no-install-recommends libxt6
RUN apt install -y libcurl4-openssl-dev

# install necessary libraries
RUN R -e "install.packages(c('DBI', 'dbx', 'dplyr', 'glue', 'knitr', 'lubridate', 'magrittr', 'mRpostman', 'checkmate', 'digest', 'dotenv', 'kableExtra', 'janitor', 'purr', 'RCurl', 'readr', 'readxl', 'rjson', 'rlang', 'RMariaDB', 'rstudioapi', 'sendmailR', 'sqldf', 'stringr', 'tibble', 'tidyr', 'tidyverse', 'testthat', 'vctrs', 'writexl', 'openxlsx'))"
RUN R -e "devtools::install_github('OuhscBbmc/REDCapR')"
