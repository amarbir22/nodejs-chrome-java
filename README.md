# nodejs-chrome-java
Docker image for running protractor tests or any Selenium based tests.
(Docker Repo)[https://hub.docker.com/r/amarbir22/nodejs-chrome-java/]

## Sample Protractor Config
```sh
    SELENIUM_PROMISE_MANAGER: false,
    directConnect: true,

    baseUrl: BASE_URL,

    capabilities: {
        browserName: "chrome",

        chromeOptions: {
            args: [ "--headless", "--no-sandbox"]
        }
    }
```

## Running Test
*   Create a npm script to run your tests in package.json
*   Either install dependencies or create a pretest script
*   Note: As the volume is being attached to the image. 
    Make sure the node modules are linux compatible.

```sh
docker run --rm -v $(pwd):/vol -w /vol amarbir22/nodejs-chrome-java /bin/bash -c 'npm run test'
```

## Expandability
As node and Java is pre-installed, You can run tests based on various frameworks
such as Webdriver.IO, NightwatchJS etc. Install Selenium Server etc.

### Thanks
Special thanks to [Jessie Frazelle](https://hub.docker.com/u/jess/) for her great work on Containerization.
