import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AppConfig {
  final String? apiUrl;

  AppConfig({
    required this.apiUrl,
  });

  static Future<AppConfig> loadConfig() async {
    final config = await _loadJsonConfig();

    String? apiUrl = config['apiUrl'];

    if (apiUrl == null || apiUrl.isEmpty) {
      apiUrl = _getLocalHostUrl();
    }

    return AppConfig(apiUrl: apiUrl);
  }

  static String _getLocalHostUrl() {
    final host = (defaultTargetPlatform == TargetPlatform.android && !kIsWeb)
        ? '10.0.2.2'
        : 'localhost';

    return 'http://$host:8080/';
  }

  static Future<Map<String, dynamic>> _loadJsonConfig() async {
    try {
      final data = await rootBundle.loadString('assets/config.json');
      return jsonDecode(data);
    } catch (e) {
      return {};
    }
  }
}
