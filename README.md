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
```
Then, run the following command in your terminal to install the package:



### Then run in terminal:
```
flutter pub get
```

## Usage

```dart
import 'package:localization_package/localization_package.dart';

