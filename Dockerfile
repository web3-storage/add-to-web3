# Just enough docker until github gets a new node16 runner
# see: https://github.com/actions/runner/issues/772
FROM node:16-alpine
COPY dist dist
ENTRYPOINT [ "node", "/dist/index.js" ]