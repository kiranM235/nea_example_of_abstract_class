void main() {
  final ElectricityGrid electricityGrids = ElectricityGrid();
  final NepalElectricity nepal = NepalElectricity();
  final IndianElectricity india = IndianElectricity();
  NepalSolarElectricity solar = NepalSolarElectricity();
  electricityGrids.add(nepal);
  electricityGrids.add(india);
  electricityGrids.add(solar);
}

class NepalElectricity implements Electricity {
  @override
  void turnOn() {
    print("I am Nepal electicity turning on");
  }

  @override
  void turnOff() {
    print("I am Nepal electicity turning off");
  }

  @override
  int costPerHour = 5;
}

class IndianElectricity extends Electricity {
  @override
  void turnOn() {
    print("I am Indian electicity turning on");
  }

  @override
  void turnOff() {
    print("I am Indian electicity turning off");
  }

  @override
  int costPerHour = 6;
}

class NepalSolarElectricity extends Electricity {
  @override
  void turnOn() {
    print("I am Nepal Solar Electricity electicity turning on");
  }

  @override
  void turnOff() {
    print("I am Nepal Solar Electricity electicity turning off");
  }

  @override
  int costPerHour = 3;
}

abstract class Electricity {
  void turnOn();
  void turnOff();
  int costPerHour = 4;
}

class ElectricityGrid {
  List<Electricity> grids = [];

  void add(Electricity electricity) {
    electricity.turnOn();
    grids.add(electricity);
  }

  void remove(Electricity electricity) {
    electricity.turnOff();
    grids.remove(electricity);
  }
}
