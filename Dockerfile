FROM jenkins/jenkins:lts
WORKDIR /var/jenkins_home
COPY . .

ENV CASC_JENKINS_CONFIG /var/jenkins_home/my_marvin.yml
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

ENV USER_CHOCOLATEEN_PASSWORD chocolateen
ENV USER_VAUGIE_G_PASSWORD vaugie_g
ENV USER_I_DONT_KNOW_PASSWORD i_dont_know
ENV USER_NASSO_PASSWORD nasso

RUN jenkins-plugin-cli --plugins \
    cloudbees-folder \
    configuration-as-code \
    credentials \
    github \
    instance-identity \
    job-dsl \
    script-security \
    structs \
    role-strategy \
    ws-cleanup