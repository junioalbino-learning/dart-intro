class Spacecraft {
  String name;
  DateTime launchDate;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // read-only non-final property
  int get launchYear => launchDate?.year;

  // Method
  void describe() {
    print('Spacecraft: $name');
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}

main () {
  Spacecraft voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  Spacecraft voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}
