import 'dart:ui';

import '../base_localization.dart';


class TurkishLocalization implements BaseLocalization {

  @override
  String get languageCode => 'tr';

  @override
  String get languageName => 'Türkçe';

  final String appNameText;

  TurkishLocalization({
    required this.appNameText,
    this.auth,
    this.actionsLocalization,
    this.errorLocalization,
    this.settingsLocalization,
    this.themeLocalization,
    this.pagesLocalization,
    this.searchLocalization,
    this.internetLocalization,
  }) {
    auth ??= TurkishAuthLocalization();
    actionsLocalization ??= TurkishActionsLocalization();
    errorLocalization ??= TurkishErrorLocalization();
    settingsLocalization ??= TurkishSettingsLocalization();
    themeLocalization ??= TurkishThemeLocalization();
    pagesLocalization ??= TurkishViewLocalization();
    searchLocalization ??= TurkishSearchLocalization();
    internetLocalization ??= TurkishInternetLocalization();
  }

  TurkishLocalization copyWith({
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
    return TurkishLocalization(
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
    /// check if the characters in value are Turkish characters
    final turkishCharacters = RegExp(r'^[a-zA-ZğüşöçİĞÜŞÖÇ\s]*$');
    return turkishCharacters.hasMatch(value.trim());
  }

  @override
  bool isValidNumbers(String value) {
    final turkishNumbers = RegExp(r'^[0-9]*$');
    return turkishNumbers.hasMatch(value.trim());
  }

  @override
  TextDirection get textDirection => TextDirection.ltr;
}

class TurkishActionsLocalization implements ActionsLocalization {
  @override
  String ok = 'Tamam';

  @override
  String cancel = 'İptal';

  @override
  String yes = 'Evet';

  @override
  String no = 'Hayır';

  @override
  String save = 'Kaydet';

  @override
  String delete = 'Sil';

  @override
  String edit = 'Düzenle';

  @override
  String add = 'Ekle';

  @override
  String update = 'Güncelle';

  @override
  String create = 'Oluştur';

  @override
  String close = 'Kapat';

  @override
  String back = 'Geri';

  @override
  String next = 'İleri';

  @override
  String skip = 'Geç';

  @override
  String finish = 'Bitir';

  @override
  String confirm = 'Onayla';

  @override
  String send = 'Gönder';

  @override
  String accept = 'Kabul et';

  @override
  String reject = 'Reddet';

  @override
  String submit = 'Gönder';

  @override
  String saveChanges = 'Değişiklikleri Kaydet';

  @override
  String reset = 'Sıfırla';

  @override
  String clear = 'Temizle';

  @override
  String join = 'Katıl';

  @override
  String leave = 'Ayrıl';

  @override
  String subscribe = 'Abone ol';

  @override
  String unsubscribe = 'Abonelikten çık';

  @override
  String follow = 'Takip et';

  @override
  String unfollow = 'Takibi bırak';

  @override
  String like = 'Beğen';

  @override
  String unlike = 'Beğenmekten vazgeç';

  @override
  String share = 'Paylaş';

  @override
  String report = 'Şikayet et';
}

class TurkishAuthLocalization extends AuthLocalization {
  @override
  String login = 'Giriş Yap';

  @override
  String loginMessage = 'Giriş yapmak için lütfen bilgilerinizi girin';

  @override
  String register = 'Kayıt Ol';

  @override
  String registerMessage = 'Kayıt olmak için lütfen formu doldurun';

  @override
  String alreadyExistMessage = TurkishErrorLocalization().theFieldAlreadyExist('hesap');

  @override
  String wrongPasswordMessage = 'Yanlış şifre';

  @override
  String pleaseCheckYourEmail = 'Lütfen e-postanızı kontrol edin';

  @override
  String pleaseEnterYourEmail = TurkishErrorLocalization().pleaseEnterValid('e-posta');

  @override
  String pleaseEnterValidEmail = TurkishErrorLocalization().pleaseEnterValid('e-posta');

  @override
  String emailAlreadyExist = TurkishErrorLocalization().theFieldAlreadyExist('e-posta');

  @override
  String emailNotValid = TurkishErrorLocalization().errorNotValid('e-posta');

  @override
  String phoneNumber = 'Telefon Numarası';

  @override
  String pleaseEnterYourPhoneNumber = 'Lütfen telefon numaranızı girin';

  @override
  String pleaseEnterValidPhoneNumber = TurkishErrorLocalization().errorNotValid('telefon numarası');

  @override
  String phoneNumberAlreadyExist = TurkishErrorLocalization().theFieldAlreadyExist('telefon numarası');

  @override
  String phoneNumberNotValid = TurkishErrorLocalization().errorNotValid('telefon numarası');

  @override
  String pleaseMakeSureYourPhoneNumberIsCorrectWay = 'Lütfen telefon numaranızın doğru olduğundan emin olun';

  @override
  String logout = 'Çıkış Yap';

  @override
  String logoutMessage = 'Çıkış yapmak istediğinizden emin misiniz?';

  @override
  String email = 'E-posta';

  @override
  String userName = 'Kullanıcı Adı';

  @override
  String password = 'Şifre';

  @override
  String pleaseEnterYourPassword = 'Lütfen şifrenizi girin';

  @override
  String passwordLengthError = 'Şifre en az 8 karakter olmalıdır';

  @override
  String passwordNotValid = TurkishErrorLocalization().errorNotValid('şifre');

  @override
  String registerText = 'Kayıt Ol';

  @override
  String loginText = 'Giriş Yap';

  @override
  String userNotFound = 'Kullanıcı bulunamadı';

  @override
  String doYouHaveAnAccount = 'Bir hesabınız var mı?';

  @override
  String alreadyHaveAnAccount = 'Zaten bir hesabınız var mı?';

  @override
  String dontHaveAnAccount = 'Bir hesabınız yok mu?';

  @override
  String createAccount = 'Hesap Oluştur';

  @override
  String forgotPassword = 'Şifrenizi mi unuttunuz?';
}

class TurkishErrorLocalization extends ErrorLocalization {
  @override
  String errorOccurred = 'Bir hata oluştu';

  @override
  String errorOccurredMessage = 'Beklenmedik bir hata oluştu';

  @override
  String errorNotValid(String field) {
    return '$field geçerli değil';
  }

  @override
  String error = 'Hata';

  @override
  String pleaseCheckYour(String field) {
    return 'Lütfen $field kontrol edin';
  }

  @override
  String theFieldAlreadyExist(String field) {
    return '$field zaten var';
  }

  @override
  String pleaseEnterValid(String field) {
    return 'Lütfen geçerli bir $field girin';
  }

  @override
  String somethingWentWrong = 'Bir şeyler ters gitti';

  @override
  String tryAgain = 'Tekrar Dene';

  @override
  String errorHappenedWhileProcessingYourRequest = 'İsteğiniz işlenirken bir hata oluştu';
}

class TurkishInternetLocalization implements InternetLocalization {
  @override
  String noInternet = 'İnternet Yok';

  @override
  String noInternetMessage = 'Lütfen internet bağlantınızı kontrol edin';

  @override
  String tryAgain = 'Tekrar Dene';
}

class TurkishViewLocalization implements ViewLocalization {
  @override
  String aboutUs = 'Hakkımızda';

  @override
  String contactUs = 'Bize Ulaşın';

  @override
  String homePageTitle = 'Ana Sayfa';

  @override
  String images = 'Görseller';

  @override
  String information = 'Bilgi';

  @override
  String privacyPolicy = 'Gizlilik Politikası';

  @override
  String products = 'Ürünler';

  @override
  String profile = 'Profil';

  @override
  String services = 'Hizmetler';

  @override
  String termsAndConditions = 'Şartlar ve Koşullar';

  @override
  String videos = 'Videolar';

  @override
  String notSupport = 'Bu görünüm desteklenmiyor';

  //'This view is not supported on this device please try another screen size or device or browser';
  @override
  String notSupportDescription = 'Bu görünüm bu cihazda desteklenmiyor, lütfen başka bir ekran boyutu, cihaz veya tarayıcı deneyin';

  @override
  String page = 'Sayfa';

  @override
  String pages = 'Sayfalar';

  @override
  String view = 'Görüntü';
}

class TurkishSearchLocalization implements SearchLocalization {
  @override
  String pleaseEnterValidCharacters = 'Lütfen geçerli karakterler girin';

  @override
  String pleaseEnterWhatYouWantToSearch = 'Aramak istediğinizi girin';

  @override
  String pleaseEnterYourSearch = 'Lütfen arama metninizi girin';

  @override
  String search = 'Ara';

  @override
  String searchError = 'Hata';

  @override
  String searchErrorMessage = 'Arama sırasında bir hata oluştu';

  @override
  String searchErrorOccurred = 'Arama sırasında bir hata oluştu';

  @override
  String searchHint = 'Ara';

  @override
  String searchMessage = 'Aramak istediğinizi girin';

  @override
  String searchNotFound = 'Sonuç Bulunamadı';

  @override
  String searchNotFoundMessage = 'Aramanız için sonuç bulunamadı';
}

class TurkishSettingsLocalization implements SettingsLocalization {
  @override
  String language = 'Dil';

  @override
  String settings = 'Ayarlar';

  @override
  String languageDialogDescription = 'Uygulama dili değiştirildi. Uygulamayı yeniden başlatın';

  // Change Language
  @override
  String languageDialogTitle = 'Dil Değiştir';
}

class TurkishThemeLocalization implements ThemeLocalization {
  @override
  String dark = 'Karanlık';

  @override
  String light = 'Aydınlık';

  @override
  String system = 'Sistem';

  @override
  String theme = 'Tema';
}
