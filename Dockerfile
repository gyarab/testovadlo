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
RUN ln -s /tasks/marks_todo /test.d/01-marks_todo
