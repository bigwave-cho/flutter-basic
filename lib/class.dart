// Class of Dart
// Flutter의 위젯들은 아래처럼 작동.
import 'dart:ffi';

class Player {
  String name;
  Int? age;

  //dart class의 constructor
  Player({required this.name, this.age});
  // age는 옵셔널로 인스턴스 생성 시 파라미터로 필수가 아님.
}

// named parameter
void main() {
  var babo = Player(name: "babo");
  babo.name; // babo
}
