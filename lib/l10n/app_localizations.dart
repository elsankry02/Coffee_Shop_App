import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @locale.
  ///
  /// In en, this message translates to:
  /// **'en'**
  String get locale;

  /// No description provided for @fallInLoveWithCoffeeInBlissfulDelight.
  ///
  /// In en, this message translates to:
  /// **'Fall in Love with\n Coffee in Blissful\n Delight!'**
  String get fallInLoveWithCoffeeInBlissfulDelight;

  /// No description provided for @welcomeToOurCozyCoffeeCornerwhereeverycupisADelightfulForYou.
  ///
  /// In en, this message translates to:
  /// **'Welcome to our cozy coffee corner, where\n every cup is a delightful for you.'**
  String get welcomeToOurCozyCoffeeCornerwhereeverycupisADelightfulForYou;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @caffeMocha.
  ///
  /// In en, this message translates to:
  /// **'Caffe Mocha'**
  String get caffeMocha;

  /// No description provided for @deepFoam.
  ///
  /// In en, this message translates to:
  /// **'Deep Foam'**
  String get deepFoam;

  /// No description provided for @discirptionCaffeMocha.
  ///
  /// In en, this message translates to:
  /// **'the basis is that a shot of espresso is combined with chocolate powder or syrup, followed by milk or cream. It is a variant of a latte, in the sense that it is often 1/3 espresso and 2/3 steamed milk.'**
  String get discirptionCaffeMocha;

  /// No description provided for @flatWhite.
  ///
  /// In en, this message translates to:
  /// **'Flat White'**
  String get flatWhite;

  /// No description provided for @espresso.
  ///
  /// In en, this message translates to:
  /// **'Espresso'**
  String get espresso;

  /// No description provided for @discirptionFlatWhite.
  ///
  /// In en, this message translates to:
  /// **'shot of espresso. This microfoam is steamed milk infused with air which creates a smooth, velvety texture and creamy taste.'**
  String get discirptionFlatWhite;

  /// No description provided for @mochaFusi.
  ///
  /// In en, this message translates to:
  /// **'Mocha Fusi'**
  String get mochaFusi;

  /// No description provided for @iceHot.
  ///
  /// In en, this message translates to:
  /// **'Ice/Hot'**
  String get iceHot;

  /// No description provided for @discirptionMochaFusi.
  ///
  /// In en, this message translates to:
  /// **'crushed ice and fusion powder, topped with cream and a dusting of chocolate powder.'**
  String get discirptionMochaFusi;

  /// No description provided for @irishCoffee.
  ///
  /// In en, this message translates to:
  /// **'Irish Coffee'**
  String get irishCoffee;

  /// No description provided for @popular.
  ///
  /// In en, this message translates to:
  /// **'Popular'**
  String get popular;

  /// No description provided for @discirptionIrishCoffee.
  ///
  /// In en, this message translates to:
  /// **'consisting of Irish whiskey, hot coffee and sugar, which has been stirred and topped with cream (sometimes cream liqueur). The coffee is drunk through the cream.'**
  String get discirptionIrishCoffee;

  /// No description provided for @affogato.
  ///
  /// In en, this message translates to:
  /// **'Affogato'**
  String get affogato;

  /// No description provided for @creamy.
  ///
  /// In en, this message translates to:
  /// **'Creamy'**
  String get creamy;

  /// No description provided for @discirptionAffogato.
  ///
  /// In en, this message translates to:
  /// **'It\'s a big scoop of vanilla ice cream with a hot espresso shot poured over it. When the affogato is ready to serve, the ice cream looks as if it has drowned in the coffee'**
  String get discirptionAffogato;

  /// No description provided for @allCoffee.
  ///
  /// In en, this message translates to:
  /// **'All Coffee'**
  String get allCoffee;

  /// No description provided for @machiato.
  ///
  /// In en, this message translates to:
  /// **'Machiato'**
  String get machiato;

  /// No description provided for @latte.
  ///
  /// In en, this message translates to:
  /// **'Latte'**
  String get latte;

  /// No description provided for @americano.
  ///
  /// In en, this message translates to:
  /// **'Americano'**
  String get americano;

  /// No description provided for @cappuccino.
  ///
  /// In en, this message translates to:
  /// **'Cappuccino'**
  String get cappuccino;

  /// No description provided for @detail.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get detail;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
