FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output

#
# Tests
#
RUN ln -s /tasks/dump /test.d/10-dump
