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
RUN ln -s /tasks/dump /test.d/10-dump

# ln -s /tasks/test_main /test.d/50-test_main
