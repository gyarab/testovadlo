FROM jenda1/testovadlo

#
# Initialization
#
RUN pip3 install dateparser matplotlib numpy

RUN mkdir -p /output
COPY tasks/* /tasks/


#
# Tests
#
#RUN ln -s /tasks/dump /test.d/01-dump
RUN ln -s /tasks/marks /test.d/05-marks

