#!/bin/bash
gem install bundler --version 1.0.22
bundle _1.0.22_ update
bundle _1.0.22_ exec rake db:migrate
bundle _1.0.22_ exec rake db:seed
