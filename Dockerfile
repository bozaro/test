FROM alpine
ARG N=1
RUN echo $N > foo.txt

LABEL T=1
LABEL T=1
LABEL T=1
LABEL T=1
LABEL T=1
LABEL T=1
LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
LABEL T=1

RUN sleep 2

LABEL T=1
LABEL T=1
LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
LABEL T=1
LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
LABEL T=1

LABEL T=1
LABEL T=1
LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
LABEL T=1
LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
LABEL T=1

LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
RUN sleep 2
LABEL T=1
LABEL T=1
LABEL T=1
