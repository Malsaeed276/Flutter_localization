[![Stand With Palestine](https://raw.githubusercontent.com/TheBSD/StandWithPalestine/main/banner-no-action.svg)](https://thebsd.github.io/StandWithPalestine)

# Localization Package

A localization package for Flutter with multiple language support, providing an extensible system to manage localizations dynamically.

## Features

- **Multi-Language Support**:
    - English Localization
    - Arabic Localization
    - Turkish Localization

- **Extensible Localization System**:
    - Abstract base classes for structured localization (`BaseLocalization`, `AuthLocalization`, `ErrorLocalization`, `SettingsLocalization`, `ActionsLocalization`, etc.).
    - Const constructors for immutable objects.

- **Dynamic Language Switching**:
    - Support for adding new variables and methods using Dart mixins and extensions.

- **Error Localization**:
    - Common error messages and handling strategies.
    - Extendable error messages using extensions to add new variables dynamically.

- **Settings and Themes Localization**:
    - Settings strings like `settings`, `language`, `languageDialogTitle`, `languageDialogDescription`.
    - Theme strings like `theme`, `dark`, `light`, `system`.

- **Internet Connectivity Localization**:
    - Strings related to internet connectivity such as `noInternet`, `noInternetMessage`, `tryAgain`.

- **Pages Localization**:
    - Common page strings such as `aboutUs`, `contactUs`, `homePageTitle`, `images`, `information`, `privacyPolicy`, `products`, `profile`, `services`, `termsAndConditions`, `videos`.

- **Action Localization**:
    - Common action strings such as `ok`, `cancel`, `yes`, `no`, `save`, `delete`, `edit`, `add`, `update`, `create`, `close`, `back`, `next`, `skip`, `finish`, `confirm`, `send`, `accept`, `reject`, `submit`, `saveChanges`, `reset`, `clear`, `join`, `leave`, `subscribe`, `unsubscribe`, `follow`, `unfollow`, `like`, `unlike`, `share`, `report`.

- **Search Localization**:
    - Search-related strings such as `pleaseEnterValidCharacters`, `pleaseEnterWhatYouWantToSearch`, `pleaseEnterYourSearch`, `search`, `searchError`, `searchErrorMessage`, `searchErrorOccurred`, `searchHint`, `searchMessage`, `searchNotFound`, `searchNotFoundMessage`.

## Installation

To use this package, add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  localization_package: ^1.0.0
   provider: ^6.0.0
```
Then, run the following command in your terminal to install the package:



### Then run in terminal:
```
flutter pub get
```

## setup
here is an example of how to setup the localization using provider

```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LocalizationProvider>(
          create: (_) => LocalizationProvider(),
        ),
      ],
      child: MaterialApp(
         title: 'Localization App',
         home: MyHomePage(),
      );
  }
}
```


## Usage
Import the package and initialize the localization:

```dart
import 'package:localization_package/localization_package.dart';

void main() {
  // Initialize English localization
  final englishLocalization = EnglishLocalization(appNameText: 'My App');

  // Accessing general app name
  print(englishLocalization.appName('My App')); // Output: My App

  // Accessing actions localization
  print(englishLocalization.actionsLocalization?.ok); // Output: OK

  // Accessing authentication localization
  print(englishLocalization.auth?.login); // Output: Login

  // Accessing error localization
  print(englishLocalization.errorLocalization?.errorOccurred); // Output: An error occurred

  // Accessing settings localization
  print(englishLocalization.settingsLocalization?.language); // Output: Language

  // Setting and getting a new variable using extension
  englishLocalization.settingsLocalization?.newVariable = 'New Value';
  print(englishLocalization.settingsLocalization?.newVariable); // Output: New Value
}
```



