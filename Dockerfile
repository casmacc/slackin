FROM node:8-alpine

RUN npm install -g slackin@0.13

ENV PORT 80
ENV SLACK_ORG ""
ENV SLACK_TOKEN ""

CMD slackin $SLACK_ORGANIZATION $SLACK_API_TOKEN

EXPOSE 80