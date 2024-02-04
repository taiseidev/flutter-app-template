import 'dart:convert';

extension StringExtension on String {
  // 文字列がメールアドレスの形式かどうかを判定
  bool get isValidEmail {
    final emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
    );
    return emailRegExp.hasMatch(this);
  }

  // 文字列がURLの形式かどうかを判定
  bool get isValidUrl {
    final urlRegExp = RegExp(
      r'^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$',
    );
    return urlRegExp.hasMatch(this);
  }

  // 文字列の最初の文字を大文字にする
  String get capitalize {
    if (isEmpty) {
      return this;
    }
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  // 文字列を逆順にする
  String get reverse => split('').reversed.join();

  // 文字列からHTMLタグを除去する
  String get stripHtmlTags {
    final tagRegExp = RegExp('<[^>]*>', multiLine: true);
    return replaceAll(tagRegExp, '');
  }

  // 文字列をBase64エンコード
  String get toBase64 => base64Encode(utf8.encode(this));

  // Base64エンコードされた文字列をデコード
  String get fromBase64 => utf8.decode(base64Decode(this));
}
