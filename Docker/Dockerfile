# Dockerfile for the NFDI4Ing Repository Explorer PoC
# build it with: docker build -t nfdi4ing-repository-explorer:v1 - < Dockerfile
FROM rocker/shiny:4.1.2 AS repository-explorer
LABEL maintainer="philipp.ost@kit.edu"

RUN install2.r --error --skipinstalled --ncpu -1 \
	rmarkdown \
	flexdashboard \
	DT \
	readr
