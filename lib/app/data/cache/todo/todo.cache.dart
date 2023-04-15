abstract class TodoCache {
  dynamic read(String key);
  void write(String key, dynamic value);
}
