Leverages on [oasdiff](https://github.com/tufin/oasdiff) to generate breaking changes, changelogs and diffs between docker api and podman api.

Usage:

`./get-specs.sh` will pull all the yaml files and save them in the `./specs` directory.

`generate_html.py` will generate the index from the jinja template.

results are saved in `./results` in Markdown and Html for convenience.
