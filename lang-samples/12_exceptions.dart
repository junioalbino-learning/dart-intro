import 'dart:io';

const flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];

main() async {
  try {
    for (var object in flybyObjects) {
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  } on IOException catch (e) {
    print('Could not describe object: $e');
  } finally {
    flybyObjects.clear();
  }
}
