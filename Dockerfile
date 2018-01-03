FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output

#
# Tests
#
RUN ln -s /tasks/dump /test.d/10-dump

# ln -s /tasks/test_main /test.d/50-test_main
