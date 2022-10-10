# Data Collections Explorer

Easy findability and accessibility are important for the efficient re-use of research data. The [Data Collections Explorer](https://rxp.datamanager.kit.edu) is an information system focussed on the engineering sciences. We want to help your search for subject specific repositories, archives, databases, and individually published datasets by answering these questions:
- Are there datasets available to support my research questions?
- Are there benchmarks available to check my results?
- Are datasets published Open Access?
- Where to publish my research datasets?
- Are there size limitations for datasets?
- Are there publication costs?

### Features
- Filtering for type of resource, subject area, Open Access
- Full-text search of the entries
- Constantly updated based on community feedback

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
docker build -t nfdi4ing-data-collections-explorer:v1 - < Dockerfile
# Start the container
docker compose up
```
Once the container is up and running, it can be accessed at `localhost:3838`.

The R Markdown document (index.Rmd) and the CSV table to be served are located in the `application` directory,
outside the Docker container. When the Docker container is run for the first time, a directory `shiny-logs` is
created on the same level as the `application` directory.
