#!/bin/bash

bundle install
bundle exec librarian-chef install
vagrant up
