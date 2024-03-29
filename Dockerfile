FROM rocker/tidyverse:4.2.1
LABEL maintainer="mbentz@ufl.edu"

WORKDIR /home/rocker

RUN apt update -y && apt install -y libcurl4-openssl-dev \
  libmariadb-dev libmariadbclient-dev

# install necessary libraries
RUN R -e "install.packages(c('DBI', 'dbx', 'dplyr', 'glue', 'knitr', 'lubridate', 'magrittr', 'mRpostman', 'checkmate', 'digest', 'dotenv', 'kableExtra', 'janitor', 'purr', 'RCurl', 'readr', 'readxl', 'rjson', 'rlang', 'RMariaDB', 'rstudioapi', 'sendmailR', 'sqldf', 'stringr', 'tibble', 'tidyr', 'tidyverse', 'testthat', 'vctrs', 'writexl'))"
RUN R -e "devtools::install_github('OuhscBbmc/REDCapR')"
