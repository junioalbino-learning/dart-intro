import '7_classes.dart';

class Piloted {
  int astronauts = 1;
  void describeCrew() {
    print ('Number os astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted {
  PilotedCraft(String date, DateTime launchDate) : super(date, launchDate);
}
