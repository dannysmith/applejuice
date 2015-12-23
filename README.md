# AppleJuice
### An Exampe Sinatra Project

This repo contains the example codebase for [this Medium tutorial](#).

## Getting started

Clone the repo and run `bundle install`. To run the tests:

```bash
rspec # Runs unit tests and HTTP response tests
cucumber # Runs capybara UI tests
rubocop # Check ruby style and syntax is ok
```

To spin the app up, you can either use rack (`rackup config.ru`). If you have the Heroku toolbelt installed you can use `heroku local`.

### To Do

- [X] Build basic structure
- [X] Get Capybara test working
- [X] Get Rspec routing tests working
- [ ] Commit and push to GitHub - write up
- [ ] Create a Slack room and connect to GitHub - write up
- [ ] Create a Codeship Build and connect to GitHub and Slack - write up
- [ ] Create a Heroku app that tracks master - write up
- [ ] Create a Heroku app that tracks production - write up
- [ ] Configure Codeship to Deploy these branches - write up
- [ ] Configure HoundCI to comment (don't forget .hound.yml) - write up
- [ ] Configure waffle.io as a task board - write up
- [ ] Configure /bugbot to work with Slack - write up
- [ ] Work through feature-branch workflow - write up
