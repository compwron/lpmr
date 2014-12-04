#!/bin/bash

source "$HOME/.rvm/scripts/rvm"
source .rvmrc

gem install bundler -v 1.2.5

bundle install
bundle exec rake --trace
