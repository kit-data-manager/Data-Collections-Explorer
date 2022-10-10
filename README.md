# Data Collections Explorer

An information system focussed on the engineering sciences.

## Getting Started

For local development, you need [RStudio](https://www.rstudio.com/) with the following packages installed:
- rmarkdown
- flexdashboard
- DT
- readr

These can be installed from within R as follows:
```
install.packages(c("rmarkdown", "flexdashboard", "DT", "readr"))
```

If you want to serve a local instance of the Data Collections Explorer, you will need Docker. Run the following
commands to set up the container:
```
# This builds the container and installs the required packages
docker build -t nfdi4ing-repository-explorer:v1 - < Dockerfile
# Start the container
docker compose up
```
Once the container is up and running, it can be accessed at `localhost:3838`.

The R Markdown document (index.Rmd) and the CSV table to be served are located in the `application` directory,
outside the Docker container. When the Docker container is run for the first time, a directory `shiny-logs` is
created on the same level as the `application` directory.
