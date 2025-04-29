FROM docker:latest

WORKDIR /app

COPY . .


RUN apk update
RUN apk add --no-cache curl bash coreutils

RUN export SKIP_USER_CREATION=1
RUN export REPORT_SELF_HOSTED_ISSUES=0

RUN ./install.sh

CMD ["docker","compose","up","--wait"]