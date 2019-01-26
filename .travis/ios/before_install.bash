#!/usr/bin/env bash

set -eu

pushd frontend/ios

bundle install
carthage bootstrap --platform ios --cache-builds
bunlde exec pod install

popd

brew tap caskroom/versions
brew cask install java8

# switch jdk to 1.8 anyway
cp ./gradlew gradlew.origin

cat<<'EOF' > ./gradlew
#!/usr/bin/env bash

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
./gradlew.origin "$@"
EOF

chmod +x ./gradlew

./gradlew androidDependenciesExtra getDependencies