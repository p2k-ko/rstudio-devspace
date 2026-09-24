FROM docker.io/rocker/rstudio:latest

# Falls Sie zusätzliche Linux-Abhängigkeiten oder R-Pakete benötigen:
RUN apt-get update && apt-get install -y libssl-dev libxml2-dev
RUN R -e "install.packages(c('tidyverse', 'remotes'), dependencies=TRUE)"

# Exponieren des Standard-RStudio-Ports
EXPOSE 8787
