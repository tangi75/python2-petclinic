## Credits
python2-petclinic is a fork from https://github.com/spring-projects/spring-python.

***This Pet Clinic project is based on an ancient stack (Python 2.7, Spring Python 1.1.x, CherryPy 3.1.2).***

## Getting started

```
docker-compose build
docker-compose up
```

The UI is available at http://localhost:8080/
Several credentials are displayed on the login page. Use them to impersonate various users.

## Local development

Just replicate on your development environment what is done in docker-compose.yml and Dockerfile for the application tier you want to develop and use docker only for the remaining, e.g. `docker-compose up db`
