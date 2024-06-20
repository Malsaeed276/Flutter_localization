import 'dart:ui';

import '../base_localization.dart';


class ArabicLocalization implements BaseLocalization {

  @override
  String get languageCode => 'ar';

  @override
  String get languageName => 'العربية';

  final String appNameText;

  ArabicLocalization({
    required this.appNameText,
    this.auth,
    this.actionsLocalization,
    this.errorLocalization,
    this.settingsLocalization,
    this.themeLocalization,
    this.viewLocalization,
    this.searchLocalization,
    this.internetLocalization,
  }) {
    auth ??= ArabicAuthLocalization();
    actionsLocalization ??= ArabicActionsLocalization();
    errorLocalization ??= ArabicErrorLocalization();
    settingsLocalization ??= ArabicSettingsLocalization();
    themeLocalization ??= ArabicThemeLocalization();
    viewLocalization ??= ArabicViewLocalization();
    searchLocalization ??= ArabicSearchLocalization();
    internetLocalization ??= ArabicInternetLocalization();
  }

  ArabicLocalization copyWith({
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
    return ArabicLocalization(
      appNameText: appNameText ?? this.appNameText,
      actionsLocalization: actionsLocalization ?? this.actionsLocalization,
      auth: auth ?? this.auth,
      errorLocalization: errorLocalization ?? this.errorLocalization,
      internetLocalization: internetLocalization ?? this.internetLocalization,
      viewLocalization: pagesLocalization ?? this.viewLocalization,
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
  ViewLocalization? viewLocalization;

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
    /// check if the characters in value are arabic characters
    final arabicCharacters = RegExp(r'^[\u0621-\u064A\s]*$');
    return arabicCharacters.hasMatch(value.trim());
  }

  @override
  bool isValidNumbers(String value) {
    final arabicNumbers = RegExp(r'^[0-9]*$');
    return arabicNumbers.hasMatch(value.trim());
  }

  @override
  TextDirection get textDirection => TextDirection.rtl;
}

class ArabicActionsLocalization implements ActionsLocalization {
  @override
  String ok = 'حسنا';

  @override
  String cancel = 'إلغاء';

  @override
  String yes = 'نعم';

  @override
  String no = 'لا';

  @override
  String save = 'حفظ';

  @override
  String delete = 'حذف';

  @override
  String edit = 'تعديل';

  @override
  String add = 'إضافة';

  @override
  String update = 'تحديث';

  @override
  String create = 'إنشاء';

  @override
  String close = 'إغلاق';

  @override
  String back = 'رجوع';

  @override
  String next = 'التالي';

  @override
  String skip = 'تخطي';

  @override
  String finish = 'إنهاء';

  @override
  String confirm = 'تأكيد';

  @override
  String send = 'إرسال';

  @override
  String accept = 'قبول';

  @override
  String reject = 'رفض';

  @override
  String submit = 'تقديم';

  @override
  String saveChanges = 'حفظ التغييرات';

  @override
  String reset = 'إعادة تعيين';

  @override
  String clear = 'مسح';

  @override
  String join = 'انضمام';

  @override
  String leave = 'مغادرة';

  @override
  String subscribe = 'اشتراك';

  @override
  String unsubscribe = 'إلغاء الاشتراك';

  @override
  String follow = 'متابعة';

  @override
  String unfollow = 'إلغاء المتابعة';

  @override
  String like = 'إعجاب';

  @override
  String unlike = 'إلغاء الإعجاب';

  @override
  String share = 'مشاركة';

  @override
  String report = 'إبلاغ';
}

class ArabicAuthLocalization extends AuthLocalization {
  @override
  String login = 'تسجيل الدخول';

  @override
  String loginMessage = 'يرجى إدخال بياناتك لتسجيل الدخول';

  @override
  String register = 'إنشاء حساب';

  @override
  String registerMessage = 'يرجى ملء النموذج لإنشاء حساب';

  @override
  String alreadyExistMessage = ArabicErrorLocalization().theFieldAlreadyExist('الحساب');

  @override
  String wrongPasswordMessage = 'كلمة المرور غير صحيحة';

  @override
  String pleaseCheckYourEmail = 'يرجى التحقق من بريدك الإلكتروني';

  @override
  String pleaseEnterYourEmail = ArabicErrorLocalization().pleaseEnterValid('البريد الإلكتروني');

  @override
  String pleaseEnterValidEmail = ArabicErrorLocalization().pleaseEnterValid('البريد الإلكتروني');

  @override
  String emailAlreadyExist = ArabicErrorLocalization().theFieldAlreadyExist('البريد الإلكتروني');

  @override
  String emailNotValid = ArabicErrorLocalization().errorNotValid('البريد الإلكتروني');

  @override
  String phoneNumber = 'رقم الهاتف';

  @override
  String pleaseEnterYourPhoneNumber = 'يرجى إدخال رقم هاتفك';

  @override
  String pleaseEnterValidPhoneNumber = ArabicErrorLocalization().errorNotValid('رقم الهاتف');

  @override
  String phoneNumberAlreadyExist = ArabicErrorLocalization().theFieldAlreadyExist('رقم الهاتف');

  @override
  String phoneNumberNotValid = ArabicErrorLocalization().errorNotValid('رقم الهاتف');

  @override
  String pleaseMakeSureYourPhoneNumberIsCorrectWay = 'يرجى التأكد من أن رقم هاتفك صحيح';

  @override
  String logout = 'تسجيل الخروج';

  @override
  String logoutMessage = 'هل أنت متأكد أنك تريد تسجيل الخروج؟';

  @override
  String email = 'البريد الإلكتروني';

  @override
  String userName = 'اسم المستخدم';

  @override
  String password = 'كلمة المرور';

  @override
  String pleaseEnterYourPassword = 'يرجى إدخال كلمة المرور';

  @override
  String passwordLengthError = 'يجب أن تكون كلمة المرور 8 أحرف على الأقل';

  @override
  String passwordNotValid = ArabicErrorLocalization().errorNotValid('كلمة المرور');

  @override
  String registerText = 'تسجيل';

  @override
  String loginText = 'تسجيل الدخول';

  @override
  String userNotFound = 'المستخدم غير موجود';

  @override
  String doYouHaveAnAccount = 'هل لديك حساب؟';

  @override
  String alreadyHaveAnAccount = 'لديك حساب بالفعل؟';

  @override
  String dontHaveAnAccount = 'ليس لديك حساب؟';

  @override
  String createAccount = 'إنشاء حساب';

  @override
  String forgotPassword = 'هل نسيت كلمة المرور؟';
}

class ArabicErrorLocalization extends ErrorLocalization {
  @override
  String errorOccurred = 'حدث خطأ';

  @override
  String errorOccurredMessage = 'حدث خطأ غير متوقع';

  @override
  String errorNotValid(String field) {
    return '$field غير صحيح';
  }

  @override
  String error = 'خطأ';

  @override
  String pleaseCheckYour(String field) {
    return 'يرجى التحقق من $field';
  }

  @override
  String theFieldAlreadyExist(String field) {
    return 'ال $field موجود بالفعل';
  }

  @override
  String pleaseEnterValid(String field) {
    return 'يرجى إدخال $field صحيح';
  }

  @override
  String somethingWentWrong = 'حدث خطأ ما';

  @override
  String tryAgain = 'حاول مرة أخرى';

  @override
  String errorHappenedWhileProcessingYourRequest = 'حدث خطأ أثناء معالجة طلبك';
}

class ArabicInternetLocalization implements InternetLocalization {
  @override
  String noInternet = 'لا يوجد اتصال بالإنترنت';

  @override
  String noInternetMessage = 'يرجى التحقق من اتصالك بالإنترنت';

  @override
  String tryAgain = 'حاول مرة أخرى';
}

class ArabicViewLocalization implements ViewLocalization {
  @override
  String aboutUs = 'معلومات عنا';

  @override
  String contactUs = 'اتصل بنا';

  @override
  String homePageTitle = 'الصفحة الرئيسية';

  @override
  String images = 'صور';

  @override
  String information = 'معلومات';

  @override
  String privacyPolicy = 'سياسة الخصوصية';

  @override
  String products = 'المنتجات';

  @override
  String profile = 'الملف الشخصي';

  @override
  String services = 'الخدمات';

  @override
  String termsAndConditions = 'الشروط والأحكام';

  @override
  String videos = 'فيديوهات';

  @override
  String notSupport = 'هذا العرض غير مدعوم';

  //'This view is not supported on this device please try another screen size or device or browser'
  @override
  String notSupportDescription =  'هذا العرض غير مدعوم على هذا الجهاز، يرجى تجربة حجم شاشة أخرى أو جهاز آخر أو متصفح';

  @override
  String page = 'الصفحة';

  @override
  String pages = 'الصفحات';

  @override
  String view = 'عرض';
}

class ArabicSearchLocalization implements SearchLocalization {
  @override
  String pleaseEnterValidCharacters = 'يرجى إدخال حروف صالحة';

  @override
  String pleaseEnterWhatYouWantToSearch = 'يرجى إدخال ما تريد البحث عنه';

  @override
  String pleaseEnterYourSearch = 'يرجى إدخال نص البحث';

  @override
  String search = 'بحث';

  @override
  String searchError = 'خطأ';

  @override
  String searchErrorMessage = 'حدث خطأ أثناء البحث';

  @override
  String searchErrorOccurred = 'حدث خطأ أثناء البحث';

  @override
  String searchHint = 'بحث';

  @override
  String searchMessage = 'ابحث عما تريد';

  @override
  String searchNotFound = 'لم يتم العثور على نتائج';

  @override
  String searchNotFoundMessage = 'لم يتم العثور على نتائج لبحثك';
}

class ArabicSettingsLocalization implements SettingsLocalization {
  @override
  String language = 'اللغة';

  @override
  String settings = 'الإعدادات';

  @override
  String languageDialogDescription = 'يرجى اختيار اللغة المفضلة لديك';

  //'Change Language'
  @override
  String languageDialogTitle = 'تغيير اللغة';
}

class ArabicThemeLocalization implements ThemeLocalization {
  @override
  String dark = 'داكن';

  @override
  String light = 'فاتح';

  @override
  String system = 'النظام';

  @override
  String theme = 'المظهر';
}
