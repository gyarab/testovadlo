FROM jenda1/testovadlo

#
# Initialization
#
RUN pip3 install dateparser
ADD https://github.com/jplag/jplag/releases/download/v2.11.9-SNAPSHOT/jplag-2.11.9-SNAPSHOT-jar-with-dependencies.jar /lib/jplag.jar

RUN mkdir -p /output
COPY tasks/* /tasks/


#
# Tests
#
