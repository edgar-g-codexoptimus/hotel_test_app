import '../../common/constants.dart';
import '../error/failure.dart';

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return Constants.SERVER_FAILURE;
    case NetworkFailure:
      return Constants.NO_INTERNET;
    default:
      return Constants.UNEXPECTED_ERROR;
  }
}
