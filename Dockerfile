FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output

#
# Tests
#
RUN ln -s /tasks/unpack /run.d/01-unpack_arg0; \
	ln -s /tasks/compile /run.d/10-compile; \
	ln -s /tasks/checkstyle /run.d/11-checkstyle
