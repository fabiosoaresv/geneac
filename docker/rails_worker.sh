#!/bin/bash
set -e

QUEUE="*" bundle exec rake resque:work
