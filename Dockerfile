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