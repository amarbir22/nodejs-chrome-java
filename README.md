# nodejs-chrome-java
Docker image for running protractor tests

## Running Test
```sh
docker run --rm -v $(pwd):/vol -w /vol amarbir22/nodejs-chrome-java /bin/bash -c 'npm run test'
```
