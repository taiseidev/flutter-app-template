setup:
	flutter clean
	flutter pub get

generate:
	flutter clean
	flutter pub get
	flutter pub run slang
	flutter pub run flutter_launcher_icons
	flutter pub run flutter_native_splash:create
	flutter pub run build_runner build --delete-conflicting-outputs

ios:
	flutter clean
	flutter pub get
	open ios/Runner.xcworkspace

android:
	flutter clean
	flutter pub get
	flutter build appbundle
