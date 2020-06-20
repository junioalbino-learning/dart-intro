import '7_classes.dart';

class MockSpaceship implements Spacecraft {
  DateTime launchDate;

  String name;

  void describe() {
    // TODO: implement describe
  }

  // TODO: implement launchYear
  int get launchYear => throw UnimplementedError();
  
}

abstract class Describable {
  void describe();

  void describeWithEmphasis() {
    print ('---------');
    describe();
    print ('---------');
  }
}