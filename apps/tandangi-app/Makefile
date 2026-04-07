BR_FLAGS ?=

.PHONY: gen
gen:
	dart run build_runner build $(BR_FLAGS)

.PHONY: fd
fd:
	(cd ios && fastlane dev)
	(cd android && fastlane dev)

.PHONY: fp
fp:
	(cd ios && fastlane prod)
	(cd android && fastlane prod)

.PHONY: fda
fda:
	(cd android && fastlane dev)
fpa:
	(cd android && fastlane prod)

