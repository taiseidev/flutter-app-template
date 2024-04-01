/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 11 (5 per locale)
///
/// Built on 2024-04-01 at 10:40 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/api/secret.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ja;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ja) // set locale
/// - Locale locale = AppLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ja) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	ja(languageCode: 'ja', build: Translations.build),
	en(languageCode: 'en', build: _ConstantsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of constants).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = constants.someKey.anotherKey;
/// String b = constants['someKey.anotherKey']; // Only for edge cases!
Translations get constants => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final constants = Translations.of(context); // Get constants variable.
/// String a = constants.someKey.anotherKey; // Use constants variable.
/// String b = constants['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.constants.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get constants => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final constants = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		    s: $calc0(2, 7, 23),
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get greeting => _root.$meta.d([12372, 12436, 12396, 12390, 12392, 38]);
	String get welcomeMessage => _root.$meta.d([31174, 12376, 12390, 12393, 12453, 12496, 12525, 12470, 12539, 12464, 12512, 12532, 12415, 12431, 12353, 12372, 12378]);
	late final _ConstantsSettingsJa settings = _ConstantsSettingsJa._(_root);
	late final _ConstantsErrorJa error = _ConstantsErrorJa._(_root);
}

// Path: settings
class _ConstantsSettingsJa {
	_ConstantsSettingsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get language => _root.$meta.d([35335, 35481]);
	String get theme => _root.$meta.d([12481, 12539, 12505]);
	String get notification => _root.$meta.d([36893, 30690]);
}

// Path: error
class _ConstantsErrorJa {
	_ConstantsErrorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	Map<String, String> get codes => {
		'404': _root.$meta.d([51, 55, 51, 39, 73, 104, 115, 39, 65, 104, 114, 105, 99]),
	};
}

// Path: <root>
class _ConstantsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_ConstantsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		    s: $calc1(7, 0, 54),
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _ConstantsEn _root = this; // ignore: unused_field

	// Translations
	@override String get greeting => _root.$meta.d([79, 98, 107, 107, 104, 38]);
	@override String get welcomeMessage => _root.$meta.d([80, 98, 107, 100, 104, 106, 98, 39, 115, 104, 39, 104, 114, 117, 39, 102, 119, 119, 107, 110, 100, 102, 115, 110, 104, 105, 41]);
	@override late final _ConstantsSettingsEn settings = _ConstantsSettingsEn._(_root);
}

// Path: settings
class _ConstantsSettingsEn extends _ConstantsSettingsJa {
	_ConstantsSettingsEn._(_ConstantsEn root) : this._root = root, super._(root);

	@override final _ConstantsEn _root; // ignore: unused_field

	// Translations
	@override String get language => _root.$meta.d([75, 102, 105, 96, 114, 102, 96, 98]);
	@override String get theme => _root.$meta.d([83, 111, 98, 106, 98]);
	@override String get notification => _root.$meta.d([73, 104, 115, 110, 97, 110, 100, 102, 115, 110, 104, 105, 116]);
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'greeting': return _root.$meta.d([12372, 12436, 12396, 12390, 12392, 38]);
			case 'welcomeMessage': return _root.$meta.d([31174, 12376, 12390, 12393, 12453, 12496, 12525, 12470, 12539, 12464, 12512, 12532, 12415, 12431, 12353, 12372, 12378]);
			case 'settings.language': return _root.$meta.d([35335, 35481]);
			case 'settings.theme': return _root.$meta.d([12481, 12539, 12505]);
			case 'settings.notification': return _root.$meta.d([36893, 30690]);
			case 'error.codes.404': return _root.$meta.d([51, 55, 51, 39, 73, 104, 115, 39, 65, 104, 114, 105, 99]);
			default: return null;
		}
	}
}

extension on _ConstantsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'greeting': return _root.$meta.d([79, 98, 107, 107, 104, 38]);
			case 'welcomeMessage': return _root.$meta.d([80, 98, 107, 100, 104, 106, 98, 39, 115, 104, 39, 104, 114, 117, 39, 102, 119, 119, 107, 110, 100, 102, 115, 110, 104, 105, 41]);
			case 'settings.language': return _root.$meta.d([75, 102, 105, 96, 114, 102, 96, 98]);
			case 'settings.theme': return _root.$meta.d([83, 111, 98, 106, 98]);
			case 'settings.notification': return _root.$meta.d([73, 104, 115, 110, 97, 110, 100, 102, 115, 110, 104, 105, 116]);
			default: return null;
		}
	}
}
