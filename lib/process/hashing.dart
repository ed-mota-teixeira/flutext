import 'dart:convert';
import 'package:crypto/crypto.dart' as crypto;

extension CalculateSHA on String {
  String get sha1 {
    var bytes = utf8.encode(this);
    crypto.Digest sha1Digest = crypto.sha1.convert(bytes);
    return sha1Digest.toString();
  }

  String get sha256 {
    var bytes = utf8.encode(this);
    crypto.Digest sha256Digest = crypto.sha256.convert(bytes);
    return sha256Digest.toString();
  }

  String get sha512 {
    var bytes = utf8.encode(this);
    crypto.Digest sha512Digest = crypto.sha512.convert(bytes);
    return sha512Digest.toString();
  }
}
