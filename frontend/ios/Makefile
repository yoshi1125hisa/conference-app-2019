.PHONY: init

init:
	bundle install
	carthage bootstrap --platform ios --cache-builds
	bunlde exec pod install --repo-update

post_checkout:
	bundle install
	carthage bootstrap --platform ios --cache-builds
	bunlde exec pod install
