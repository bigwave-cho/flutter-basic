import 'package:flutter/material.dart';

// main 함수는 dart에서 모든 프로그램의 시작점!
void main() {
  //void runApp(Widget app)
  //https://docs.flutter.dev/development/ui/widgets 위젯 docs
  // 위젯을 만드는 것은 class 를 만드는 것.
  runApp(App());
}

// flutter의 core widget 2개 중 하나를 상속받아 widget을 만든다.
// stateless & stateful

class App extends StatelessWidget {
  //모든 위젯은 build 메서드가 필수.
  //build는 return하는 것을 화면에 보여줌
  //StatelessWidget을 cmd 클릭해서 들어가보면 추상클래스로 구현돼있고 거기에 build 메서드가 있는 것도 확인 가능.
  //그래서 build메서드를 오버라이드 하는 것.
  @override
  Widget build(BuildContext context) {
    //App Widget은 root 위젯으로서 material(구글) or cupertino(애플) 중 선택.
    return MaterialApp(
      //팁 : 위젯에 커서 올려보면 class의 constructor를 통하여 어떤 위젯, 속성이 있는지 알 수 있음.
      //Scaffold : 뼈대를 구성하는 위젯.
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello flutter!"),
        ),
        body: const Center(child: Text('hello world')),
      ),
    );
  }
}
