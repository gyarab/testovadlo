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

COPY prep /test.d/05-prep
COPY test /test.d/50-test
