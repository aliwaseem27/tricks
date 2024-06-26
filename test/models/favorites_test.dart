import 'package:test/test.dart';
import 'package:tricks/models/favorites.dart';

void main() {
  group("Testing App Provider", () {
    var favorites = Favorites();
    test("A new item should be added", () {
      var number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test("Item should be added then removed", () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
