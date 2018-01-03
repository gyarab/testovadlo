FROM jenda1/testovadlo

#
# Initialization
#
RUN pip3 install dateparser

RUN mkdir -p /output
COPY tasks/* /tasks/


#
# Tests
#
RUN ln -s /tasks/unpack /test.d/01-unpack_arg0; \
	ln -s /tasks/compile /test.d/10-compile; \
	ln -s /tasks/checkstyle /test.d/11-checkstyle; \
	ln -s /tasks/history /test.d/19-history; \

COPY test /test.d/50-test
