# AppleJuice
### An Exampe Sinatra Project

[ ![Codeship Status for dannysmith/applejuice](https://codeship.com/projects/512b0fd0-8be2-0133-9aa6-5ed2a6e67545/status?branch=master)](https://codeship.com/projects/123833)

This repo contains the example codebase for [this Medium tutorial](#).

## Getting started

Clone the repo and run `bundle install`. To run the tests:

```bash
rspec # Runs unit tests and HTTP response tests
cucumber # Runs capybara UI tests
rubocop # Check ruby style and syntax is ok
```

To spin the app up, you can either use rack (`rackup config.ru`). If you have the Heroku toolbelt installed you can use `heroku local`.

