import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'SUPABASE_URL_DEV', obfuscate: true)
  static String devUrl = _Env.devUrl;
  @EnviedField(varName: 'SUPABASE_ANON_KEY_DEV', obfuscate: true)
  static String devKey = _Env.devKey;
  @EnviedField(varName: 'SUPABASE_URL_PROD', obfuscate: true)
  static String prodUrl = _Env.prodUrl;
  @EnviedField(varName: 'SUPABASE_ANON_KEY_PROD', obfuscate: true)
  static String prodKey = _Env.prodKey;
}
