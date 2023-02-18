import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Colors.black <- 기본 / Color(색상값) <- 커스텀
        backgroundColor: const Color(0xFF181818),
        // Column 수직으로 배치 // Row 수평으로 배치
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            children: [
              //SizedBox 공간 주는 위젯.
              const SizedBox(
                height: 80,
              ),
              Row(
                //마우스 올려보면 {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start}
                // 파라미터 기본값으로 .start 받는 것 확인, 이걸로 뭐 써야하는지 알 수 있음.
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    //Column과 Row alignment는 반대로 작용함.(flex 생각해보기)
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Hey, Selena',
                        //뭐가 들어가는지 모르겠으면 무조건 마우스 올려보면 답 나옴.
                        style: TextStyle(
                          color: Colors.white,
                          //{double? fontSize} 마우스 올려보기
                          fontSize: 28,
                          //{FontWeight? fontWeight}
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
