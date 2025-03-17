import '../../../generated/l10n.dart';

abstract class CustomFireBaseAuthException {
  static String throwFireBaseError({required String code}) {
    switch (code) {
      case 'user-not-found':
        return S.current.FireBaseUserNotFound;
      case 'wrong-password':
        return S.current.FireBaseWrongPassword;
      case 'invalid-email':
        return S.current.FireBaseInvalidEmail;
      case 'email-already-in-use':
        return S.current.FireBaseEmailAlreadyInUse;
      case 'weak-password':
        return S.current.FireBaseWeakPassword;
      case 'operation-not-allowed':
        return S.current.FireBaseOperationNotAllowed;
      case 'too-many-requests':
        return S.current.FireBaseTooManyRequests;
      case 'account-exists-with-different-credential':
        return S.current.FireBaseAccountExistWithDifferntCredential;
      case 'credential-already-in-use':
        return S.current.FireBaseCredentialAlreadyInUse;
      case 'invalid-verification-code':
        return S.current.FireBaseInvalidVerificationCode;

      case 'invalid-verification-id':
        return S.current.FireBaseInvalidVerificationID;

      case 'session-expired':
        return S.current.FireBaseInvalidVerificationCode;
      case 'invalid-credential':
        return S.current.FireBaseInvalidCredential;
      case 'user-mismatch':
        return S.current.FireBaseUserMisMatch;

      case 'network-request-failed':
        return S.current.FireBaseNetworkRequestFailed;

      case 'app-not-authorized':
        return S.current.FireBaseAppNotAuthorized;

      case 'user-disabled':
        return S.current.FireBaseUserDisabled;

      case 'expired-action-code':
        return S.current.FireBaseExpiredActionCode;

      case 'invalid-action-code':
        return S.current.FireBaseInvalidActionCode;

      case 'missing-verification-code':
        return S.current.FireBaseMissingVerificationCode;
      case 'quota-exceeded':
        return S.current.FireBaseQuotaExceeded;
      default:
        return S.current.FireBaseUnknownError;
    }
  }
}
