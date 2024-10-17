import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const double textFieldSize = 300.0; //로그인 페이지 내의 텍스트 필드 사이즈
  static const double textFieldBottomPaddingSize = 40.0; //텍스트필드 아래 패딩 사이즈
  static const Color buttonTextColor =
      Color.fromARGB(255, 101, 85, 143); //버튼속 텍스트 색상

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter, //
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max, //
        children: <Widget>[
          logo(),
          loginTextField("이메일"),
          passwordTextField("비밀번호"),
          loginButton("로그인"),
          resistButton("회원가입"),
          resetPasswordButton("비밀번호 재설정"),
        ],
      ),
    );
  }

//로고 위젯
  Widget logo() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 150, 0, 80),
      child: Image.asset('assets/images/temp_logo.png'),
    );
  }

//TextField 위젯
  Widget loginTextField(String labelText) {
    return Container(
        width: textFieldSize,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, textFieldBottomPaddingSize),
        child: TextFormField(
          //Validation을 위한 TextFormField 사용
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: "이메일을 입력해주세요",
              labelText: labelText,
              floatingLabelBehavior:
                  FloatingLabelBehavior.always //라벨텍스트를 항상 보이게
              ),
        ));
  }

//비밀번호 TextField 위젯
  Widget passwordTextField(String labelText) {
    return Container(
        width: textFieldSize,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, textFieldBottomPaddingSize),
        child: TextFormField(
          obscureText: true, //입력 텍스트를 모두 .으로 표기
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: "비밀번호를 입력해주세요",
              labelText: labelText,
              floatingLabelBehavior:
                  FloatingLabelBehavior.always //라벨텍스트를 항상 보이게
              ),
        ));
  }

  //로그인 ElevatedButton 위젯
  Widget loginButton(String buttonText) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              fixedSize: const Size(textFieldSize, 50),
              backgroundColor: const Color.fromARGB(255, 247, 242, 250),
              foregroundColor: buttonTextColor,
              shadowColor: Colors.black),
          child: Text(buttonText),
        ));
  }

  //회원가입 ElevatedButton 위젯
  Widget resistButton(String buttonText) {
    return Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
              fixedSize: const Size(textFieldSize, 50),
              backgroundColor: const Color.fromARGB(255, 208, 188, 255),
              foregroundColor: buttonTextColor),
          child: Text(buttonText),
        ));
  }

  //비밀번호 찾기 TextButton 위젯
  Widget resetPasswordButton(String buttonText) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: 20),
          fixedSize: const Size(200, 50),
          foregroundColor: buttonTextColor),
      child: Text(buttonText),
    );
  }
}
