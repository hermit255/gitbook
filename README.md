# Feature
  - Portable environment for gitbook project excluding document files.
  - plantuml is available on default setting.
  - You can modify plugins or other setting as you like editing `book.json`

# How to use
  - Clone this repository into your gitbook document directory (where `README.md` exits).
  - `docker-compose up` to build docker image and serve your gitbook at `http://localhost:4000`.

# Export
  - `docker-compose run gitbook build` to export gitbook documents as html (at `./_build/`).
  - `docker-compose run gitbook pdf|epub|mobi` to export gitbook documents as pdf|epub|mobi (at `./_exoport/`).

# Modification
  - If you use your own setiing copy your `book.json` to `./conf/` then gitbook refers your setting and re-install plugins.
  - Refer `https://janicezhw.github.io/gitbook/startusegitbook/configInfo/bookjson.html` for more information about `book.json`
