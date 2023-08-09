import 'package:equatable/equatable.dart';

final String messageConnectionFailure = 'Connection Failure';

class Failure extends Equatable {
  final String errorMessage;

  Failure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  String toString() {
    return 'ServerFailure{errorMessage: $errorMessage}';
  }
}
