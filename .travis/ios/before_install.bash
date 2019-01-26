#!/usr/bin/env bash

set -eu

cd frontend/ios

bundle install
make init

./gradlew androidDependenciesExtra getDependencies