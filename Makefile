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

# ドキュメント作成・更新
generate-doc:
	export PATH="$$HOME/fvm/default/bin:$$PATH"
	dart doc

# ドキュメントを開く
open-doc:
	open doc/api/index.html

# riverpod_graphを作成
generate-graph:
	dart pub global run riverpod_graph:riverpod_graph > doc/graph.md
	./sh/fix_graph.sh
