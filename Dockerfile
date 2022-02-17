FROM rocker/tidyverse:4.1.0

WORKDIR /home/rocker

RUN apt update -y && apt install -y libcurl4-openssl-dev \
  libmariadb-dev libmariadbclient-dev

# install necessary libraries
RUN R -e "install.packages(c('DBI', 'dplyr', 'glue', 'knitr', 'lubridate', 'magrittr', 'mRpostman', 'checkmate', 'digest', 'dotenv', 'kableExtra', 'janitor', 'purr', 'RCurl', 'readr', 'rjson', 'rlang', 'RMariaDB', 'rstudioapi', 'sendmailR', 'sqldf', 'stringr', 'tibble', 'tidyr', 'tidyverse', 'testthat', 'vctrs', 'writexl'))"
RUN R -e "devtools::install_github('OuhscBbmc/REDCapR')"
