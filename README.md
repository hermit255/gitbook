# Feature
  - Portable environment for gitbook project which keeps gitbook package with config files. (`book.json`, `package.json`)
  - Gitbook including plantuml plugin

# How to use
  - Clone this repository into your gitbook project.
  - Copy `sample.env` as `.env`, then replace value of $`DOCS_DIR` with your document root path where `README.md` is located.
  - `docker-compose up` to build docker image and serve your gitbook at `http://localhost:4000`.

# export
  - `docker-compose run gitbook build` to export gitbook documents as html (at `./_build/`).
  - `docker-compose run gitbook pdf|epub|mobi` to export gitbook documents as pdf|epub|mobi (at `./_exoport/`).
