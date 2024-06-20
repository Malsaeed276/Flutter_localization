import 'dart:ui';

import '../base_localization.dart';


class EnglishLocalization implements BaseLocalization {

  @override
  String get languageCode => 'en';

  @override
  String get languageName => 'English';

  final String appNameText;

  EnglishLocalization({
    required this.appNameText,
    this.auth,
    this.actionsLocalization,
    this.errorLocalization,
    this.settingsLocalization,
    this.themeLocalization,
    this.pagesLocalization,
    this.searchLocalization,
    this.internetLocalization,
  }){
    auth ??= EnglishAuthLocalization();
    actionsLocalization ??= EnglishActionsLocalization();
    errorLocalization ??= EnglishErrorLocalization();
    settingsLocalization ??= EnglishSettingsLocalization();
    themeLocalization ??= EnglishThemeLocalization();
    pagesLocalization ??= EnglishViewLocalization();
    searchLocalization ??= EnglishSearchLocalization();
    internetLocalization ??= EnglishInternetLocalization();
  }

  EnglishLocalization copyWith({
    String? appNameText,
    ActionsLocalization? actionsLocalization,
    AuthLocalization? auth,
    ErrorLocalization? errorLocalization,
    InternetLocalization? internetLocalization,
    ViewLocalization? pagesLocalization,
    SearchLocalization? searchLocalization,
    SettingsLocalization? settingsLocalization,
    ThemeLocalization? themeLocalization,
  }) {
    return EnglishLocalization(
      appNameText: appNameText ?? this.appNameText,
      actionsLocalization: actionsLocalization ?? this.actionsLocalization,
      auth: auth ?? this.auth,
      errorLocalization: errorLocalization ?? this.errorLocalization,
      internetLocalization: internetLocalization ?? this.internetLocalization,
      pagesLocalization: pagesLocalization ?? this.pagesLocalization,
      searchLocalization: searchLocalization ?? this.searchLocalization,
      settingsLocalization: settingsLocalization ?? this.settingsLocalization,
      themeLocalization: themeLocalization ?? this.themeLocalization,
    );
  }

  @override
  ActionsLocalization? actionsLocalization;

  @override
  AuthLocalization? auth;

  @override
  ErrorLocalization? errorLocalization;

  @override
  InternetLocalization? internetLocalization;

  @override
  ViewLocalization? pagesLocalization;

  @override
  SearchLocalization? searchLocalization;

  @override
  SettingsLocalization? settingsLocalization;

  @override
  ThemeLocalization? themeLocalization;


  @override
  String appName(String appName) {
    return appNameText;
  }

  @override
  bool isValidCharacters(String value) {
   /// check if the characters in value are english characters
    final englishCharacters = RegExp(r'^[a-zA-Z\s]*$');
    return englishCharacters.hasMatch(value.trim());
  }

  @override
  bool isValidNumbers(String value) {

    final englishNumbers = RegExp(r'^[0-9]*$');
    return englishNumbers.hasMatch(value.trim());
  }

  @override
  TextDirection get textDirection => TextDirection.ltr;

}

class EnglishActionsLocalization implements ActionsLocalization {
  @override
  String ok = 'OK';

  @override
  String cancel = 'Cancel';

  @override
  String yes = 'Yes';

  @override
  String no = 'No';

  @override
  String save = 'Save';

  @override
  String delete = 'Delete';

  @override
  String edit = 'Edit';

  @override
  String add = 'Add';

  @override
  String update = 'Update';

  @override
  String create = 'Create';

  @override
  String close = 'Close';

  @override
  String back = 'Back';

  @override
  String next = 'Next';

  @override
  String skip = 'Skip';

  @override
  String finish = 'Finish';

  @override
  String confirm = 'Confirm';

  @override
  String send = 'Send';

  @override
  String accept = 'Accept';

  @override
  String reject = 'Reject';

  @override
  String submit = 'Submit';

  @override
  String saveChanges = 'Save Changes';

  @override
  String reset = 'Reset';

  @override
  String clear = 'Clear';

  @override
  String join = 'Join';

  @override
  String leave = 'Leave';

  @override
  String subscribe = 'Subscribe';

  @override
  String unsubscribe = 'Unsubscribe';

  @override
  String follow = 'Follow';

  @override
  String unfollow = 'Unfollow';

  @override
  String like = 'Like';

  @override
  String unlike = 'Unlike';

  @override
  String share = 'Share';

  @override
  String report = 'Report';
}

class EnglishAuthLocalization extends AuthLocalization {

  EnglishAuthLocalization();


  @override
  String login = 'Login';

  @override
  String loginMessage = 'Please enter your credentials to login';

  @override
  String register = 'Register';

  @override
  String registerMessage = 'Please fill in the form to register';

  @override
  String alreadyExistMessage = EnglishErrorLocalization().theFieldAlreadyExist('account');

  @override
  String wrongPasswordMessage = 'Incorrect password';

  @override
  String pleaseCheckYourEmail = 'Please check your email';

  @override
  String pleaseEnterYourEmail = EnglishErrorLocalization().pleaseEnterValid('email');

  @override
  String pleaseEnterValidEmail = EnglishErrorLocalization().pleaseEnterValid('email');

  @override
  String emailAlreadyExist = EnglishErrorLocalization().theFieldAlreadyExist('email');

  @override
  String emailNotValid = EnglishErrorLocalization().errorNotValid('email');

  @override
  String phoneNumber = 'Phone Number';

  @override
  String pleaseEnterYourPhoneNumber = 'Please enter your phone number';

  @override
  String pleaseEnterValidPhoneNumber = EnglishErrorLocalization().errorNotValid('phone number');

  @override
  String phoneNumberAlreadyExist = EnglishErrorLocalization().theFieldAlreadyExist('phone number');

  @override
  String phoneNumberNotValid = EnglishErrorLocalization().errorNotValid('phone number');

  @override
  String pleaseMakeSureYourPhoneNumberIsCorrectWay = 'Please make sure your phone number is correct';

  @override
  String logout = 'Logout';

  @override
  String logoutMessage = 'Are you sure you want to logout?';

  @override
  String email = 'Email';

  @override
  String userName = 'Username';

  @override
  String password = 'Password';

  @override
  String pleaseEnterYourPassword = 'Please enter your password';

  @override
  String passwordLengthError = 'Password must be at least 8 characters';

  @override
  String passwordNotValid = EnglishErrorLocalization().errorNotValid('Password');

  @override
  String registerText = 'Register';

  @override
  String loginText = 'Login';

  @override
  String userNotFound = 'User not found';

  @override
  String doYouHaveAnAccount = 'Do you have an account?';

  @override
  String alreadyHaveAnAccount = 'Already have an account?';

  @override
  String dontHaveAnAccount = 'Don\'t have an account?';

  @override
  String createAccount = 'Create Account';

  @override
  String forgotPassword = 'Forgot Password?';
}

class EnglishErrorLocalization extends ErrorLocalization {
  @override
  String errorOccurred = 'An error occurred';

  @override
  String errorOccurredMessage = 'An unexpected error occurred';

  @override
  String errorNotValid(String field) {
    return '$field is not valid';
  }

  @override
  String error = 'Error';

  @override
  String pleaseCheckYour(String field) {
    return 'Please check your $field';
  }

  @override
  String theFieldAlreadyExist(String field) {
    return 'The $field already exists';
  }

  @override
  String pleaseEnterValid(String field) {
    return 'Please enter a valid $field';
  }

  @override
  String somethingWentWrong = 'Something went wrong';

  @override
  String tryAgain = 'Try Again';

  @override
  String errorHappenedWhileProcessingYourRequest = 'An error happened while processing your request';
}


class EnglishInternetLocalization implements InternetLocalization {

  @override
  String noInternet = 'No Internet';

  @override
  String noInternetMessage = 'Please check your internet connection';

  @override
  String tryAgain = 'Try Again';
}

class EnglishViewLocalization implements ViewLocalization {
  @override
  String aboutUs = 'About Us';

  @override
  String contactUs = 'Contact Us';

  @override
  String homePageTitle = 'Home';

  @override
  String images = 'Images';

  @override
  String information = 'Information';

  @override
  String privacyPolicy = 'Privacy Policy';

  @override
  String products = 'Products';

  @override
  String profile = 'Profile';

  @override
  String services = 'Services';

  @override
  String termsAndConditions = 'Terms and Conditions';

  @override
  String videos = 'Videos';

  @override
  String notSupport = 'This view is not supported';

  @override
  String notSupportDescription = 'This view is not supported on this device please try another screen size or device or browser';

  @override
  String page = 'Page';

  @override
  String pages = 'Pages';

  @override
  String view = 'View';

}

class EnglishSearchLocalization implements SearchLocalization {
  @override
  String pleaseEnterValidCharacters = 'Please enter valid characters';

  @override
  String pleaseEnterWhatYouWantToSearch = 'Please enter what you want to search';

  @override
  String pleaseEnterYourSearch = 'Please enter your search text';

  @override
  String search = 'Search';

  // error happened while searching
  @override
  String searchError = 'Error';

  @override
  String searchErrorMessage = 'An error occurred while searching';

  @override
  String searchErrorOccurred = 'An error occurred while searching';

  @override
  String searchHint = 'Search';

  @override
  String searchMessage = 'Search for what you want';

  @override
  String searchNotFound = 'Not Found';

  @override
  String searchNotFoundMessage = 'No results found for your search';

}

class EnglishSettingsLocalization implements SettingsLocalization{
  @override
  String language = 'Language';

  @override
  String settings = 'Settings';

  @override
  String languageDialogDescription = 'Select the language you want to use';

  @override
  String languageDialogTitle = 'Change Language';

}

class EnglishThemeLocalization implements ThemeLocalization {
  @override
  String dark = 'Dark';

  @override
  String light = 'Light';

  @override
  String system = 'System';

  @override
  String theme = 'Theme';

}