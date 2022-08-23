FROM public.ecr.aws/lambda/python:3.8

# Copy function code
COPY app.py ${LAMBDA_TASK_ROOT}

# Install the function's dependencies using file requirements.txt
# from your project folder.

RUN  yum update
RUN  yum install -y git

COPY core-libraries.txt  .
RUN  pip3 install -r core-libraries.txt --target "${LAMBDA_TASK_ROOT}"

COPY squac-library.txt  .
RUN  pip3 install -r squac-library.txt --target "${LAMBDA_TASK_ROOT}"

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "app.handler" ]

