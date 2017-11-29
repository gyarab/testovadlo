FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output

#
# Tests
#
RUN ln -s /tasks/unpack.py /run.d/01-unpack_arg0.py; \
	ln -s /tasks/compile.sh /run.d/10-compile.sh; \
	ln -s /tasks/checkstyle.sh /run.d/11-checkstyle.sh

ADD http://repo1.maven.org/maven2/com/thoughtworks/xstream/xstream/1.4.10/xstream-1.4.10.jar /xstream-1.4.10.jar
