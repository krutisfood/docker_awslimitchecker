# docker_awslimitchecker

Dockerfile for AWS service limits and usage via boto. http://awslimitchecker.readthedocs.org/ —


## Recommended Usage


1. Get cli creds for AWS.
2. Build
  ```
  docker build -t limey .
  ```
3. Use
  ```
  docker run -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -e AWS_SESSION_TOKEN -e AWS_DEFAULT_REGION -e AWS_REGION -it limey
  ```

Voila!

