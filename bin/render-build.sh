#!/usr/bin/env bash
# exit on error
set -o errexit
# bundle install
# bundle exec rails assets:precompile
# bundle exec rails assets:clean
# bundle exec rails db:migrate

# bundle exec rails db:migrate:reset
# bundle exec rails db:seed

bundle install && yarn install && bundle exec rake assets:precompile && bundle exec rake assets:clean && bundle exec rails webpacker:compile && bundle exec rake db:migrate
