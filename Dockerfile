FROM rocker/tidyverse:4.0.1

WORKDIR /home/rocker

RUN apt update -y && apt install -y libcurl4-openssl-dev \
  libmariadb-dev libmariadbclient-dev

# install necessary libraries
RUN R -e "install.packages(c('sendmailR', 'dotenv', 'tidyverse', 'testthat', 'RCurl', 'checkmate', 'janitor', 'sqldf', 'DBI', 'RMariaDB', 'digest', 'kableExtra', 'rjson'))"
RUN R -e "devtools::install_github('OuhscBbmc/REDCapR')"
