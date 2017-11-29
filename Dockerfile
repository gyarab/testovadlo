FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output

#
# Tests
#
RUN ln -s /tasks/dump /run.d/10-dump
