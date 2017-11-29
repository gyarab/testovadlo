FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output

#
# Tests
#
RUN ln -s /tasks/dump.sh /run.d/10-dump.sh
