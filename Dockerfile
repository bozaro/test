FROM alpine
ARG N=1
RUN echo $N > foo.txt
# 20 sec
RUN sleep 2
RUN sleep 2
RUN sleep 2
RUN sleep 2
RUN sleep 2

# 10 sec
RUN sleep 2
RUN sleep 2
RUN sleep 2
RUN sleep 2
RUN sleep 2
