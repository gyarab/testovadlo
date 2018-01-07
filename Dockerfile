FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output

#
# Tests
#
ADD http://repo1.maven.org/maven2/com/thoughtworks/xstream/xstream/1.4.10/xstream-1.4.10.jar /xstream-1.4.10.jar
ADD http://repo1.maven.org/maven2/com/google/code/gson/gson/2.8.2/gson-2.8.2.jar /gson.jar

RUN ln -s /tasks/unpack /test.d/01-unpack_arg0; \
	ln -s /tasks/compile /test.d/10-compile; \
	ln -s /tasks/checkstyle /test.d/11-checkstyle; \
	ln -s /tasks/history /test.d/19-history; \
	ln -s /tasks/test_main /test.d/40-test_main

COPY test /test.d/50-test
