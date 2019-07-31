FROM alpine
ARG N=1
RUN echo $N > foo.txt
# 5 sec
RUN sleep 1
RUN sleep 1
RUN sleep 1
RUN sleep 1
RUN sleep 1

# 5 sec
RUN sleep 1
RUN sleep 1
RUN sleep 1
RUN sleep 1
RUN sleep 1

# 5 sec
RUN sleep 1
RUN sleep 1
RUN sleep 1
RUN sleep 1
RUN sleep 1

# 5 sec
RUN sleep 1
RUN sleep 1
RUN sleep 1
RUN sleep 1
RUN sleep 1
