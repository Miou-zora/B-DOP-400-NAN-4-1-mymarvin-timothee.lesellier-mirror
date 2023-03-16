FROM mymarvin:latest

WORKDIR /var/jenkins_home
COPY my_marvin.yml .
COPY job_dsl.groovy .
