## Structure

Files in this directory:

- app.py: contains your application code
- core-libraries.txt: contains the core pip packages to install for your script
- squac-library.txt: contains the pip reference to your squac library
- Dockerfile: the environment setup script

## Local testing

- To build the docker image (package things all up):
  `docker build -t squac-test .`
- To test the docker image:
  - In one terminal, run:
    `docker run -p 9000:8080 squac-test`
  - In another terminal, run:
    `curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'`

## Links

- Guide followed to create this docker setup: https://docs.aws.amazon.com/lambda/latest/dg/python-image.html

- Guide to follow to upload the docker image to AWS:
https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-upload

- Guide to follow to use docker image as a lambda function:
https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-images.html

- Guide to follow to trigger lambda function periodically like a cronjob (follow up through the heading 'Test the Lambda function', the rest is irrelevant):
https://docs.aws.amazon.com/lambda/latest/dg/services-cloudwatchevents-tutorial.html

