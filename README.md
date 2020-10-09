# checkexpiringdomainssl
This is used for send alerts via slack if upcoming domain is expiring within 24 days.

run docker image docker run --env DOMAINS="yourdomain1.com yourdomain2.com yourdomain2.com" --env SLACK_WEB_URL=https://hooks.slack.com/services/yourchannelwebhookurl ranbatrekker/checkdomainssl:latest

There are two environment variable are using DOMAINS and SLACK_WEB_URL ex. DOMAINS="yourdomain.com" or DOMAINS="yourmultidomain.com yourmultidomain.com yourmultidomain.com"

and SLACK_WEB_URL=https://hooks.slack.com/services/url

reference
https://hub.docker.com/repository/docker/ranbatrekker/checkdomainssl


