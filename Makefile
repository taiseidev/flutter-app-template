.PHONY: build
build:
	@dart format -o none --set-exit-if-changed $$(find ./lib ./test -name "*.dart" -not \( -name "*.*freezed.dart" -o -name "*.*g.dart" \) ) || exit 0
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: setup
setup:
	flutter clean
	flutter pub get

.PHONY: slang
slang:
	fvm dart run build_runner build -d
	flutter pub run build_runner build --delete-conflicting-outputs
