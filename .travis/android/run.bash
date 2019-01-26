#!/usr/bin/env bash

set -eu

./gradlew androidDependenciesExtra getDependencies

# for now
./gradlew assembleDebug --offline