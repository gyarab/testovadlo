FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output

#
# Tests
#
RUN ln -s /tasks/unpack /test.d/01-unpack_arg0; \
	ln -s /tasks/compile /test.d/10-compile; \
	ln -s /tasks/checkstyle /test.d/11-checkstyle
	
ADD http://repo1.maven.org/maven2/com/thoughtworks/xstream/xstream/1.4.10/xstream-1.4.10.jar /xstream-1.4.10.jar
