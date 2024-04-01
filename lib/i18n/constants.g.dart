/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 26 (13 per locale)
///
/// Built on 2024-04-01 at 13:30 UTC

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
	late final _ConstantsExampleJa example = _ConstantsExampleJa._(_root);
	late final _ConstantsStringsJa strings = _ConstantsStringsJa._(_root);
}

// Path: example
class _ConstantsExampleJa {
	_ConstantsExampleJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _ConstantsExampleMainScreenJa mainScreen = _ConstantsExampleMainScreenJa._(_root);
	late final _ConstantsExampleGameJa game = _ConstantsExampleGameJa._(_root);
	String items({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: _root.$meta.d([94, 104, 114, 39, 111, 102, 113, 98, 39]) + n.toString() + _root.$meta.d([39, 110, 115, 98, 106]),
		other: _root.$meta.d([94, 104, 114, 39, 111, 102, 113, 98, 39]) + n.toString() + _root.$meta.d([39, 110, 115, 98, 106, 116]),
	);
	late final _ConstantsExampleGreetJa greet = _ConstantsExampleGreetJa._(_root);
	late final _ConstantsExampleIntroJa intro = _ConstantsExampleIntroJa._(_root);
	late final _ConstantsExampleErrorJa error = _ConstantsExampleErrorJa._(_root);
	late final _ConstantsExampleOnboardingJa onboarding = _ConstantsExampleOnboardingJa._(_root);
}

// Path: strings
class _ConstantsStringsJa {
	_ConstantsStringsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get greeting => _root.$meta.d([12372, 12436, 12396, 12390, 12392, 38]);
	String get welcomeMessage => _root.$meta.d([31174, 12376, 12390, 12393, 12453, 12496, 12525, 12470, 12539, 12464, 12512, 12532, 12415, 12431, 12353, 12372, 12378]);
	late final _ConstantsStringsSettingsJa settings = _ConstantsStringsSettingsJa._(_root);
	late final _ConstantsStringsErrorJa error = _ConstantsStringsErrorJa._(_root);
}

// Path: example.mainScreen
class _ConstantsExampleMainScreenJa {
	_ConstantsExampleMainScreenJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => _root.$meta.d([74, 102, 110, 105, 39, 84, 100, 117, 98, 98, 105, 39, 83, 110, 115, 107, 98]);
}

// Path: example.game
class _ConstantsExampleGameJa {
	_ConstantsExampleGameJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _ConstantsExampleGameEndJa end = _ConstantsExampleGameEndJa._(_root);
}

// Path: example.greet
class _ConstantsExampleGreetJa {
	_ConstantsExampleGreetJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get male => _root.$meta.d([79, 98, 107, 107, 104, 39, 74, 117, 41, 39, 124, 124, 105, 102, 106, 98, 122, 122]);
	String get female => _root.$meta.d([79, 98, 107, 107, 104, 39, 74, 116, 41, 39, 124, 124, 105, 102, 106, 98, 122, 122]);
}

// Path: example.intro
class _ConstantsExampleIntroJa {
	_ConstantsExampleIntroJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<String> get step => [
		_root.$meta.d([84, 115, 98, 119, 39, 54]),
		_root.$meta.d([84, 115, 98, 119, 39, 53]),
		_root.$meta.d([84, 115, 98, 119, 39, 52]),
		_root.$meta.d([84, 115, 98, 119, 39, 51]),
		_root.$meta.d([84, 115, 98, 119, 39, 50]),
	];
}

// Path: example.error
class _ConstantsExampleErrorJa {
	_ConstantsExampleErrorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _ConstantsExampleErrorTypeJa type = _ConstantsExampleErrorTypeJa._(_root);
}

// Path: example.onboarding
class _ConstantsExampleOnboardingJa {
	_ConstantsExampleOnboardingJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	List<dynamic> get pages => [
		_ConstantsExampleOnboarding$pages$0i0$Ja._(_root),
		_ConstantsExampleOnboarding$pages$0i1$Ja._(_root),
	];
}

// Path: strings.settings
class _ConstantsStringsSettingsJa {
	_ConstantsStringsSettingsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get language => _root.$meta.d([35335, 35481]);
	String get theme => _root.$meta.d([12481, 12539, 12505]);
	String get notification => _root.$meta.d([36893, 30690]);
}

// Path: strings.error
class _ConstantsStringsErrorJa {
	_ConstantsStringsErrorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	Map<String, String> get codes => {
		'404': _root.$meta.d([51, 55, 51, 39, 73, 104, 115, 39, 65, 104, 114, 105, 99]),
	};
}

// Path: example.game.end
class _ConstantsExampleGameEndJa {
	_ConstantsExampleGameEndJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String highScore({required Object score}) => _root.$meta.d([94, 104, 114, 117, 39, 111, 110, 96, 111, 39, 116, 100, 104, 117, 98, 39, 110, 116, 39]) + score.toString() + _root.$meta.d([38]);
}

// Path: example.error.type
class _ConstantsExampleErrorTypeJa {
	_ConstantsExampleErrorTypeJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get warning => _root.$meta.d([83, 111, 110, 116, 39, 110, 116, 39, 102, 39, 112, 102, 117, 105, 110, 105, 96, 39, 106, 98, 116, 116, 102, 96, 98]);
	String get error => _root.$meta.d([83, 111, 110, 116, 39, 110, 116, 39, 102, 105, 39, 98, 117, 117, 104, 117, 39, 106, 98, 116, 116, 102, 96, 98]);
}

// Path: example.onboarding.pages.0
class _ConstantsExampleOnboarding$pages$0i0$Ja {
	_ConstantsExampleOnboarding$pages$0i0$Ja._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => _root.$meta.d([80, 98, 107, 100, 104, 106, 98, 39, 115, 104, 39, 115, 111, 98, 39, 102, 119, 119, 38]);
}

// Path: example.onboarding.pages.1
class _ConstantsExampleOnboarding$pages$0i1$Ja {
	_ConstantsExampleOnboarding$pages$0i1$Ja._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => _root.$meta.d([79, 104, 112, 39, 115, 104, 39, 96, 98, 115, 39, 116, 115, 102, 117, 115, 98, 99]);
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
	@override late final _ConstantsStringsEn strings = _ConstantsStringsEn._(_root);
}

// Path: strings
class _ConstantsStringsEn extends _ConstantsStringsJa {
	_ConstantsStringsEn._(_ConstantsEn root) : this._root = root, super._(root);

	@override final _ConstantsEn _root; // ignore: unused_field

	// Translations
	@override String get greeting => _root.$meta.d([79, 98, 107, 107, 104, 38]);
	@override String get welcomeMessage => _root.$meta.d([80, 98, 107, 100, 104, 106, 98, 39, 115, 104, 39, 104, 114, 117, 39, 102, 119, 119, 107, 110, 100, 102, 115, 110, 104, 105, 41]);
	@override late final _ConstantsStringsSettingsEn settings = _ConstantsStringsSettingsEn._(_root);
}

// Path: strings.settings
class _ConstantsStringsSettingsEn extends _ConstantsStringsSettingsJa {
	_ConstantsStringsSettingsEn._(_ConstantsEn root) : this._root = root, super._(root);

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
			case 'example.mainScreen.title': return _root.$meta.d([74, 102, 110, 105, 39, 84, 100, 117, 98, 98, 105, 39, 83, 110, 115, 107, 98]);
			case 'example.game.end.highScore': return ({required Object score}) => _root.$meta.d([94, 104, 114, 117, 39, 111, 110, 96, 111, 39, 116, 100, 104, 117, 98, 39, 110, 116, 39]) + score.toString() + _root.$meta.d([38]);
			case 'example.items': return ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
				one: _root.$meta.d([94, 104, 114, 39, 111, 102, 113, 98, 39]) + n.toString() + _root.$meta.d([39, 110, 115, 98, 106]),
				other: _root.$meta.d([94, 104, 114, 39, 111, 102, 113, 98, 39]) + n.toString() + _root.$meta.d([39, 110, 115, 98, 106, 116]),
			);
			case 'example.greet.male': return _root.$meta.d([79, 98, 107, 107, 104, 39, 74, 117, 41, 39, 124, 124, 105, 102, 106, 98, 122, 122]);
			case 'example.greet.female': return _root.$meta.d([79, 98, 107, 107, 104, 39, 74, 116, 41, 39, 124, 124, 105, 102, 106, 98, 122, 122]);
			case 'example.intro.step.0': return _root.$meta.d([84, 115, 98, 119, 39, 54]);
			case 'example.intro.step.1': return _root.$meta.d([84, 115, 98, 119, 39, 53]);
			case 'example.intro.step.2': return _root.$meta.d([84, 115, 98, 119, 39, 52]);
			case 'example.intro.step.3': return _root.$meta.d([84, 115, 98, 119, 39, 51]);
			case 'example.intro.step.4': return _root.$meta.d([84, 115, 98, 119, 39, 50]);
			case 'example.error.type.warning': return _root.$meta.d([83, 111, 110, 116, 39, 110, 116, 39, 102, 39, 112, 102, 117, 105, 110, 105, 96, 39, 106, 98, 116, 116, 102, 96, 98]);
			case 'example.error.type.error': return _root.$meta.d([83, 111, 110, 116, 39, 110, 116, 39, 102, 105, 39, 98, 117, 117, 104, 117, 39, 106, 98, 116, 116, 102, 96, 98]);
			case 'example.onboarding.pages.0.title': return _root.$meta.d([80, 98, 107, 100, 104, 106, 98, 39, 115, 104, 39, 115, 111, 98, 39, 102, 119, 119, 38]);
			case 'example.onboarding.pages.1.title': return _root.$meta.d([79, 104, 112, 39, 115, 104, 39, 96, 98, 115, 39, 116, 115, 102, 117, 115, 98, 99]);
			case 'strings.greeting': return _root.$meta.d([12372, 12436, 12396, 12390, 12392, 38]);
			case 'strings.welcomeMessage': return _root.$meta.d([31174, 12376, 12390, 12393, 12453, 12496, 12525, 12470, 12539, 12464, 12512, 12532, 12415, 12431, 12353, 12372, 12378]);
			case 'strings.settings.language': return _root.$meta.d([35335, 35481]);
			case 'strings.settings.theme': return _root.$meta.d([12481, 12539, 12505]);
			case 'strings.settings.notification': return _root.$meta.d([36893, 30690]);
			case 'strings.error.codes.404': return _root.$meta.d([51, 55, 51, 39, 73, 104, 115, 39, 65, 104, 114, 105, 99]);
			default: return null;
		}
	}
}

extension on _ConstantsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'strings.greeting': return _root.$meta.d([79, 98, 107, 107, 104, 38]);
			case 'strings.welcomeMessage': return _root.$meta.d([80, 98, 107, 100, 104, 106, 98, 39, 115, 104, 39, 104, 114, 117, 39, 102, 119, 119, 107, 110, 100, 102, 115, 110, 104, 105, 41]);
			case 'strings.settings.language': return _root.$meta.d([75, 102, 105, 96, 114, 102, 96, 98]);
			case 'strings.settings.theme': return _root.$meta.d([83, 111, 98, 106, 98]);
			case 'strings.settings.notification': return _root.$meta.d([73, 104, 115, 110, 97, 110, 100, 102, 115, 110, 104, 105, 116]);
			default: return null;
		}
	}
}
