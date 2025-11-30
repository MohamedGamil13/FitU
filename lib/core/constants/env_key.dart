import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvKey {
  static final String? cLIENT_ID = dotenv.env['CLIENT_ID'];
  static final String? cLIENT_ID_server = dotenv.env['SERVER_CLIENT_ID'];
  EnvKey._();
}
