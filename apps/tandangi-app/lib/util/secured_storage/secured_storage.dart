import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecuredStorage {
  SecuredStorage();

  final _storage = const FlutterSecureStorage();

  IOSOptions _getIOSOptions() =>
      const IOSOptions(accessibility: KeychainAccessibility.first_unlock);

  AndroidOptions _getAndroidOptions() => const AndroidOptions();

  Future<String?> readString(String key) {
    return _storage.read(
      key: key,
      aOptions: _getAndroidOptions(),
      iOptions: _getIOSOptions(),
    );
  }

  Future<int?> readInt(String key) async {
    final value = await readString(key) ?? '';
    return int.tryParse(value);
  }

  Future<bool> readBool(String key) async {
    final value = await readString(key) ?? 'false';
    return value.toLowerCase() == 'true';
  }

  Future<void> write(String key, dynamic value) {
    return _storage.write(
      key: key,
      value: value?.toString(),
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<String?> readStringByUserId(int userId, String key) {
    return readString('$userId-$key');
  }

  Future<int?> readIntByUserId(int userId, String key) async {
    final value = await readString('$userId-$key') ?? '';
    return int.tryParse(value);
  }

  Future<bool> readBoolByUserId(int userId, String key) async {
    final value = await readString('$userId-$key') ?? 'false';
    return value.toLowerCase() == 'true';
  }

  Future<void> writeByUserId(int userId, String key, dynamic value) {
    return write('$userId-$key', value);
  }

  Future<void> clear() {
    return _storage.deleteAll(
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> delete(String key) {
    return _storage.delete(
      key: key,
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }

  Future<void> deleteByUserId(int userId, String key) {
    return delete('$userId-$key');
  }

  Future<bool> contains(String key) {
    return _storage.containsKey(
      key: key,
      iOptions: _getIOSOptions(),
      aOptions: _getAndroidOptions(),
    );
  }
}

class SecuredStorageKeys {
  static const fcmToken = 'fcmToken';
}
