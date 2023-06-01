import 'package:chopper/chopper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/service/chopper_service.dart';

part 'authentication_service.chopper.dart';

final authenticationServiceProvider = Provider<AuthenticationService>(
  (ref) => AuthenticationService.create(chopperClient),
);

@ChopperApi()
abstract class AuthenticationService extends ChopperService {
  static AuthenticationService create([ChopperClient? client]) {
    return _$AuthenticationService(client);
  }
}
