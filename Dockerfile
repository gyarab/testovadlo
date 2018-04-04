FROM jenda1/testovadlo

#
# Initialization
#
RUN mkdir -p /output
COPY tasks/* /tasks/

#
# Tests
#
