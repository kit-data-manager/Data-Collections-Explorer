# Dockerfile for the NFDI4Ing Data Collections Explorer PoC
# Build it with: docker build -t data-collections-explorer:v1 - < Dockerfile
# Alternativly: docker build -t data-collections-explorer:v1 .
FROM rocker/shiny:4.1.2 AS data-collections-explorer
LABEL maintainer="philipp.ost@kit.edu"

RUN install2.r --error --skipinstalled --ncpu -1 \
	rmarkdown \
	flexdashboard \
	DT \
	readr

# Remove examples
RUN cd /srv/shiny-server && rm -rf 0?_* 1?_* sample-apps index.html
