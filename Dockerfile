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
RUN ln -s /tasks/history /test.d/19-history
