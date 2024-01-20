enum Color {
  red,
  green,
  blue,
  yellow,
}

extension ColorExtension on Color {
  String get name {
    switch (this) {
      case Color.red:
        return "red";
      case Color.green:
        return "green";
      case Color.blue:
        return "blue";
      case Color.yellow:
        return "yellow";
    }
  }
}
// print(Color.red.name);

Map<String, dynamic> testConstant = {"key": "value"};
