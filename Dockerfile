FROM maven:3.5-jdk-7

PWD /usr/src/code

RUN apt-get update && apt-get -y git && git clone https://github.com/rajtotaldevops/jpetstore.git \
	&& cd jpetstore

CMD ["mvn", "clean", "package"]

VOLUME /usr/src/code/target

