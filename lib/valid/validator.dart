//값 검증 용 클래스
class Validator {
  //이메일 형식 확인(공백 포함)
  bool isEmailValidated(String email) {
    return RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$").hasMatch(email);
  }

  //비밀번호 검증(공백 포함)
  bool isPasswordValidated(String password) {
    return RegExp(
            r'^(?!.*\s)(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$')
        .hasMatch(password);
  }

  //비밀번호, 비밀번호 확인 일치 확인
  bool isPasswordSamedWithPasswordConfirm(
      String password, String passwordConfirm) {
    if (password == passwordConfirm) {
      return true;
    } else {
      return false;
    }
  }
}
