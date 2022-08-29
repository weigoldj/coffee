FROM alpine:3.16

RUN mkdir -p /home/app
WORKDIR /home/app

# Add go image for alpine
COPY --from=golang:1.19.0-alpine3.16 /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"

# buffalo 
RUN apk add --update nodejs yarn git
RUN wget https://github.com/gobuffalo/cli/releases/download/v0.18.8/buffalo_0.18.8_Linux_x86_64.tar.gz
RUN tar -xvzf buffalo_0.18.8_Linux_x86_64.tar.gz
RUN mv buffalo /usr/local/bin/buffalo

ARG UNAME=testuser
ARG UID=1000
ARG GID=1000s
# Create a group and user
RUN addgroup -S $GID && adduser -S $UID -G $GID

EXPOSE 3000
EXPOSE 35729
