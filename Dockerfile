# Dockerfile for the NFDI4Ing Repository Explorer PoC
# Build it with: docker build -t nfdi4ing-repository-explorer:v1 - < Dockerfile
# Alternativly: docker build -t nfdi4ing-repository-explorer:v1 .
FROM rocker/shiny:4.1.2 AS repository-explorer
LABEL maintainer="philipp.ost@kit.edu"

RUN install2.r --error --skipinstalled --ncpu -1 \
	rmarkdown \
	flexdashboard \
	DT \
	readr

# Remove examples and create link to make RepositoryExplorer.Rmd the default app
RUN cd /srv/shiny-server && rm -rf 0?_* 1?_* sample-apps index.html \
	&& ln -s RepositoryExplorer.Rmd index.Rmd
