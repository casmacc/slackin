# Slackin

Docker image for [Slackin](https://github.com/rauchg/slackin) based on Alpine
linux.

## Usage

Pass your Slack organization (`SLACK_ORGANIZATION`) and API token
(`SLACK_API_TOKEN`) as environment variables to the container. The container
will run the Slackin web app on port `80` - in the example below, a port
forward to local port 3000 is configured:

    docker run -e SLACK_ORGANIZATION=<Slack organization> \
              -e SLACK_API_TOKEN=<Slack API token> \
              -d -p 3000:80 \
              casmacc/slackin
