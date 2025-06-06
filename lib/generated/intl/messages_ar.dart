// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(currency) => "${currency} / ";

  static String m1(provider) => "تسجيل بواسطة ${provider}";

  static String m2(discount) => "خصم ${discount}%";

  static String m3(unit) => "${unit}";

  static String m4(name) => "${name} يجب إدخالة.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Apple": MessageLookupByLibrary.simpleMessage("أبل"),
    "AuthDontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "لا تمتلك حساب؟",
    ),
    "AuthEmailAddressHint": MessageLookupByLibrary.simpleMessage(
      "البريد الإلكتروني",
    ),
    "AuthForgetPassword": MessageLookupByLibrary.simpleMessage(
      "نسيت كلمة المرور؟",
    ),
    "AuthFullNameHint": MessageLookupByLibrary.simpleMessage("الأسم كامل"),
    "AuthHaveAccount": MessageLookupByLibrary.simpleMessage(
      "تمتلك حساب بالفعل؟",
    ),
    "AuthLoginSuccessSnackBar": MessageLookupByLibrary.simpleMessage(
      "تم تسجيل الدخول بنجاح.",
    ),
    "AuthPasswordHint": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "AuthRegisterNow": MessageLookupByLibrary.simpleMessage("قم بإنشاء حساب"),
    "AuthRegisterSuccessSnackBar": MessageLookupByLibrary.simpleMessage(
      "تم إنشاء المستخدم بنجاح.",
    ),
    "Cart": MessageLookupByLibrary.simpleMessage("سله التسوق"),
    "Categories": MessageLookupByLibrary.simpleMessage("المنتجات"),
    "CreateNewAccount": MessageLookupByLibrary.simpleMessage("إنشاء حساب جديد"),
    "CurrencyPer": m0,
    "EidOffers": MessageLookupByLibrary.simpleMessage("عروض العيد"),
    "Facebook": MessageLookupByLibrary.simpleMessage("فيسبوك"),
    "FireBaseAccountExistWithDifferntCredential":
        MessageLookupByLibrary.simpleMessage(
          "يوجد حساب موجود بالفعل بنفس البريد الإلكتروني ولكن بيانات تسجيل الدخول مختلفة.",
        ),
    "FireBaseAppNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "لا يُسمح للتطبيق باستخدام مصادقة قاعدة البيانات.",
    ),
    "FireBaseCredentialAlreadyInUse": MessageLookupByLibrary.simpleMessage(
      "تم ربط بيانات الاعتماد بالفعل بحساب مستخدم مختلف.",
    ),
    "FireBaseEmailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
      "الحساب موجود بالفعل.",
    ),
    "FireBaseEnternalError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ داخلي في خادم مصادقة قاعدة البيانات.",
    ),
    "FireBaseExpiredActionCode": MessageLookupByLibrary.simpleMessage(
      "لقد انتهت صلاحية رمز الإجراء (على سبيل المثال، رمز إعادة تعيين كلمة المرور).",
    ),
    "FireBaseInvalidActionCode": MessageLookupByLibrary.simpleMessage(
      "كود الإجراء غير صالح.",
    ),
    "FireBaseInvalidCredential": MessageLookupByLibrary.simpleMessage(
      "إن بيانات الاعتماد مشوهة أو منتهية الصلاحية.",
    ),
    "FireBaseInvalidEmail": MessageLookupByLibrary.simpleMessage(
      "عنوان البريد الإلكتروني غير صحيح أو غير صالح.",
    ),
    "FireBaseInvalidVerificationCode": MessageLookupByLibrary.simpleMessage(
      " رمز التحقق من الرسائل النصية القصيرة غير صالح.",
    ),
    "FireBaseInvalidVerificationID": MessageLookupByLibrary.simpleMessage(
      " معرف التحقق المستخدم لمصادقة الهاتف غير صالح.",
    ),
    "FireBaseMissingVerificationCode": MessageLookupByLibrary.simpleMessage(
      "رمز التحقق مفقود.",
    ),
    "FireBaseNetworkRequestFailed": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ في الشبكة (على سبيل المثال، عدم وجود اتصال بالإنترنت).",
    ),
    "FireBaseOperationNotAllowed": MessageLookupByLibrary.simpleMessage(
      "لم يتم تمكين عملية المصادقة المطلوبة (على سبيل المثال، تسجيل الدخول بالبريد الإلكتروني/كلمة المرور) في وحدة تحكم قاعدة البيانات.",
    ),
    "FireBaseQuotaExceeded": MessageLookupByLibrary.simpleMessage(
      "تم تجاوز الحصة المخصصة للعملية (على سبيل المثال، تم إرسال عدد كبير جدًا من رسائل SMS).",
    ),
    "FireBaseRequiresRecentLogin": MessageLookupByLibrary.simpleMessage(
      "تتطلب العملية تسجيل دخول حديث.",
    ),
    "FireBaseSessionExpired": MessageLookupByLibrary.simpleMessage(
      "لقد انتهت صلاحية رمز الرسالة النصية القصيرة.",
    ),
    "FireBaseTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "تم إرسال عدد كبير جدًا من الطلبات إلى الخادم. غالبًا ما يكون ذلك بسبب محاولات تسجيل دخول فاشلة متكررة.",
    ),
    "FireBaseUnknownError": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ, برجاء المحاولة لاحقاً.",
    ),
    "FireBaseUserDisabled": MessageLookupByLibrary.simpleMessage(
      "لقد تم تعطيل حساب المستخدم من قبل المسؤول.",
    ),
    "FireBaseUserMisMatch": MessageLookupByLibrary.simpleMessage(
      "لا تتطابق بيانات الاعتماد مع المستخدم الحالي.",
    ),
    "FireBaseUserNotFound": MessageLookupByLibrary.simpleMessage(
      "المستخدم غير موجود",
    ),
    "FireBaseWeakPassword": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور المدخلة ضعيفة.",
    ),
    "FireBaseWrongPassword": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور غير صحيحة",
    ),
    "GoodMorning": MessageLookupByLibrary.simpleMessage("صباح الخير!.."),
    "Google": MessageLookupByLibrary.simpleMessage("جوجل"),
    "HintSearch": MessageLookupByLibrary.simpleMessage("أبحث عن..."),
    "Home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "LoginViewTitle": MessageLookupByLibrary.simpleMessage("تسجيل دخول"),
    "LoginWithProvider": m1,
    "More": MessageLookupByLibrary.simpleMessage("المزيد"),
    "MorePurchases": MessageLookupByLibrary.simpleMessage("الأكثر مبيعاً"),
    "OffersDiscount": m2,
    "OnBoardItem1SubTitle": MessageLookupByLibrary.simpleMessage(
      "أكتشف تجربة تسوف فريدة مع FruitHUB. أستكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة وأحصل علي أفضل العروض والجودة العالية",
    ),
    "OnBoardItem1Title": MessageLookupByLibrary.simpleMessage("مرحباً بك في"),
    "OnBoardItem2SubTitle": MessageLookupByLibrary.simpleMessage(
      "نقدم لك أفضل الفواكه المختارة بعناية. أطلع علي التفاصيل والصور والتقييمات للتأكد من إختيار الفاكهة المثالية",
    ),
    "OnBoardItem2Title": MessageLookupByLibrary.simpleMessage("أبحث و تسوق"),
    "OnBoardNextStep": MessageLookupByLibrary.simpleMessage("تخط"),
    "OnBoardStartButton": MessageLookupByLibrary.simpleMessage("أبدأ الآن"),
    "Or": MessageLookupByLibrary.simpleMessage("أو"),
    "Profile": MessageLookupByLibrary.simpleMessage("حسابي"),
    "RegisterViewPleaseAcceptTermsAndConditions":
        MessageLookupByLibrary.simpleMessage(
          "برجاء الموافقة علي الشروط والأحكام.",
        ),
    "RegisterViewTermsAndConditions": MessageLookupByLibrary.simpleMessage(
      "الشروط والأحكام الخاصة بنا.",
    ),
    "RegisterViewTermsAndConditionsLabel": MessageLookupByLibrary.simpleMessage(
      "من خلال إنشاء حساب ، فإنك توافق علي ",
    ),
    "RegisterViewTitle": MessageLookupByLibrary.simpleMessage("حساب جديد"),
    "ShoppingNow": MessageLookupByLibrary.simpleMessage("تسوق الآن"),
    "Unit": m3,
    "requiredFiled": m4,
  };
}
