abstract class ThemeCache {
  Future<bool> getBrightness();
  Future<void> saveBrightness(bool isLight);
}
