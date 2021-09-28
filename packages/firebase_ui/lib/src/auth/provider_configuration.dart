import 'package:firebase_auth/firebase_auth.dart';

import 'auth_controller.dart' show AuthAction;
import 'auth_flow.dart';

abstract class ProviderConfiguration {
  String get providerId;
  Type get controllerType;

  AuthFlow createFlow(FirebaseAuth auth, AuthAction action);
}
