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
	ln -s /tasks/checkstyle /test.d/11-checkstyle; \
	ln -s /tasks/test_main /test.d/50-test_main

COPY test /test.d/80-test
