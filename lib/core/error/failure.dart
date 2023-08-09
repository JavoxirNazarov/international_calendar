final String messageConnectionFailure = 'Connection Failure';

class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);

  @override
  String toString() {
    return 'ServerFailure{errorMessage: $errorMessage}';
  }
}
