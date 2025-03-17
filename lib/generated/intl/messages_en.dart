// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(provider) => "Login With ${provider}";

  static String m1(name) => "${name} is required.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "Apple": MessageLookupByLibrary.simpleMessage("Apple"),
    "AuthDontHaveAccount": MessageLookupByLibrary.simpleMessage(
      "Don\'t Have an Account?",
    ),
    "AuthEmailAddressHint": MessageLookupByLibrary.simpleMessage(
      "Email Address",
    ),
    "AuthForgetPassword": MessageLookupByLibrary.simpleMessage(
      "Forget Password?",
    ),
    "AuthFullNameHint": MessageLookupByLibrary.simpleMessage("Full Name"),
    "AuthHaveAccount": MessageLookupByLibrary.simpleMessage("Have an Account?"),
    "AuthPasswordHint": MessageLookupByLibrary.simpleMessage("Password"),
    "AuthRegisterNow": MessageLookupByLibrary.simpleMessage("Register Now"),
    "AuthRegisterSuccessSnackBar": MessageLookupByLibrary.simpleMessage(
      "Create User Successfully",
    ),
    "CreateNewAccount": MessageLookupByLibrary.simpleMessage("Create Account"),
    "Facebook": MessageLookupByLibrary.simpleMessage("Facebook"),
    "FireBaseAccountExistWithDifferntCredential":
        MessageLookupByLibrary.simpleMessage(
          "An account already exists with the same email but different sign-in credentials.",
        ),
    "FireBaseAppNotAuthorized": MessageLookupByLibrary.simpleMessage(
      "The app is not authorized to use Firebase Authentication.",
    ),
    "FireBaseCredentialAlreadyInUse": MessageLookupByLibrary.simpleMessage(
      "The credential is already associated with a different user account.",
    ),
    "FireBaseEmailAlreadyInUse": MessageLookupByLibrary.simpleMessage(
      "The account already exists for that email.",
    ),
    "FireBaseEnternalError": MessageLookupByLibrary.simpleMessage(
      "An internal error occurred in the Firebase Authentication server.",
    ),
    "FireBaseExpiredActionCode": MessageLookupByLibrary.simpleMessage(
      "The action code (e.g., password reset code) has expired.",
    ),
    "FireBaseInvalidActionCode": MessageLookupByLibrary.simpleMessage(
      "The action code is invalid.",
    ),
    "FireBaseInvalidCredential": MessageLookupByLibrary.simpleMessage(
      "The credential is malformed or has expired.",
    ),
    "FireBaseInvalidEmail": MessageLookupByLibrary.simpleMessage(
      "The email address is malformed or invalid.",
    ),
    "FireBaseInvalidVerificationCode": MessageLookupByLibrary.simpleMessage(
      " The SMS verification code is invalid.",
    ),
    "FireBaseInvalidVerificationID": MessageLookupByLibrary.simpleMessage(
      " The verification ID used for phone authentication is invalid.",
    ),
    "FireBaseMissingVerificationCode": MessageLookupByLibrary.simpleMessage(
      "The verification code is missing.",
    ),
    "FireBaseNetworkRequestFailed": MessageLookupByLibrary.simpleMessage(
      "A network error occurred (e.g., no internet connection).",
    ),
    "FireBaseOperationNotAllowed": MessageLookupByLibrary.simpleMessage(
      "The requested authentication operation (e.g., email/password sign-in) is not enabled in the Firebase Console.",
    ),
    "FireBaseQuotaExceeded": MessageLookupByLibrary.simpleMessage(
      "The quota for the operation has been exceeded (e.g., too many SMS messages sent).",
    ),
    "FireBaseRequiresRecentLogin": MessageLookupByLibrary.simpleMessage(
      "The operation requires a recent login.",
    ),
    "FireBaseSessionExpired": MessageLookupByLibrary.simpleMessage(
      "The SMS code has expired.",
    ),
    "FireBaseTooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Too many requests were made to the server. This is often due to repeated failed login attempts.",
    ),
    "FireBaseUnknownError": MessageLookupByLibrary.simpleMessage(
      "There is an error, please try later.",
    ),
    "FireBaseUserDisabled": MessageLookupByLibrary.simpleMessage(
      "The user’s account has been disabled by an administrator.",
    ),
    "FireBaseUserMisMatch": MessageLookupByLibrary.simpleMessage(
      "The credential does not match the current user.",
    ),
    "FireBaseUserNotFound": MessageLookupByLibrary.simpleMessage(
      "User Not Found",
    ),
    "FireBaseWeakPassword": MessageLookupByLibrary.simpleMessage(
      "The password provided is too weak.",
    ),
    "FireBaseWrongPassword": MessageLookupByLibrary.simpleMessage(
      "Wrong Password",
    ),
    "Google": MessageLookupByLibrary.simpleMessage("Google"),
    "LoginViewTitle": MessageLookupByLibrary.simpleMessage("Login"),
    "LoginWithProvider": m0,
    "OnBoardItem1SubTitle": MessageLookupByLibrary.simpleMessage(
      "Enjoy Shopping with FruitHUB. Explore Wide Variety of Fresh Fruits and get the best offers with high quality",
    ),
    "OnBoardItem1Title": MessageLookupByLibrary.simpleMessage("Welcome to"),
    "OnBoardItem2SubTitle": MessageLookupByLibrary.simpleMessage(
      "We Provide you best carfully choosing fruits. Look on Details,Images and Evaluations to ensure from best choice",
    ),
    "OnBoardItem2Title": MessageLookupByLibrary.simpleMessage(
      "Search and Shopping",
    ),
    "OnBoardNextStep": MessageLookupByLibrary.simpleMessage("Skip"),
    "OnBoardStartButton": MessageLookupByLibrary.simpleMessage("Start Now"),
    "Or": MessageLookupByLibrary.simpleMessage("OR"),
    "RegisterViewPleaseAcceptTermsAndConditions":
        MessageLookupByLibrary.simpleMessage(
          "Please accept terms and conditions.",
        ),
    "RegisterViewTermsAndConditions": MessageLookupByLibrary.simpleMessage(
      "terms and conditions.",
    ),
    "RegisterViewTermsAndConditionsLabel": MessageLookupByLibrary.simpleMessage(
      "By creating an account, you agree to our ",
    ),
    "RegisterViewTitle": MessageLookupByLibrary.simpleMessage("Register"),
    "requiredFiled": m1,
  };
}
