FROM rocker/tidyverse:4.0.1

WORKDIR /home/rocker

RUN apt update -y && apt install -y libcurl4-openssl-dev \
  libmariadb-dev libmariadbclient-dev

# install necessary libraries
RUN R -e "install.packages(c('sendmailR', 'dotenv', 'tidyverse', 'testthat', 'RCurl', 'checkmate', 'janitor', 'sqldf', 'DBI', 'RMariaDB', 'digest', 'kableExtra'))"
RUN R -e "devtools::install_github('OuhscBbmc/REDCapR')"

#ADD . /home/rocker/stp

# build and install our precious package
#RUN R CMD build stp
#RUN R CMD INSTALL stp_*.tar.gz

# Note where we are, what is there, and what's in the package dir
CMD pwd && ls -AlhF ./ && echo /home/rocker && ls -AlhF .

