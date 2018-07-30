# Slackin

Docker image for [Slackin](https://github.com/rauchg/slackin) based on Alpine
linux.

## Usage

### Docker

Pass your Slack organization (`SLACK_ORGANIZATION`) and API token
(`SLACK_API_TOKEN`) as environment variables to the container. The container
will run the Slackin web app on port `80` - in the example below, a port
forward to local port 3000 is configured:

    docker run -e SLACK_ORGANIZATION=<Slack organization> \
              -e SLACK_API_TOKEN=<Slack API token> \
              -d -p 3000:80 \
              casmacc/slackin

### Docker Compose

Simply create a docker-compose.override.yml file, in this dir (where the
docker-compose.yml is located at), then specify the required env vars, the ones
listed in docker-compose.yml.

A template `docker-compose.yml`:

    version: '3'
    services:
      slackin:
        build: .
        ports:
          - "3015:3015"
        environment:
          SLACK_TOKEN: YYYYYYY
          SLACK_ORG:   ZZZZZZZ

Once saved you can run:

`docker-compose build && docker-compose up`

### Tips

Your team id is what you use to access your login page on Slack (eg:
https://{this}.slack.com).

You can find or generate your API test token at api.slack.com/web – note that
the user you use to generate the token must be an admin. You need to create a
dedicated @slackin-inviter user (or similar), mark that user an admin, and use
a test token from that dedicated admin user. Note that test tokens have actual
permissions so you do not need to create an OAuth 2 app. Also check out the
Slack docs on generating a test token.

Important: If you use Slackin in single-channel mode, you'll only be able to
invite as many external accounts as paying members you have times 5. If you are
not getting invite emails, this might be the reason. Workaround: sign up for a
free org, and set up Slackin to point to it (all channels will be visible).

