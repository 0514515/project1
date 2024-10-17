//Model
class MemberModel {
  String _email = ""; //이메일 필드
  String _authNumber = ""; //인증번호 필드
  String _password = ""; //비밀번호 필드
  String _passwordConfirm = ""; //비밀번호 확인 필드

  void setEmail(String email) {
    _email = email;
  }

  void setAuthNumber(String authNumber) {
    _authNumber = authNumber;
  }

  void setPassword(String password) {
    _password = password;
  }

  void setPasswordConfirm(String passwordConfirm) {
    _passwordConfirm = passwordConfirm;
  }

  //이메일 형식 확인(공백 포함)
  bool isEmailValidated() {
    return RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$")
        .hasMatch(_email);
  }

  //비밀번호 검증(공백 포함)
  bool isPasswordValidated() {
    return RegExp(
            r'^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$')
        .hasMatch(_password);
  }

  //비밀번호, 비밀번호 확인 일치 확인
  bool isPasswordConfirmed() {
    if (_password == _passwordConfirm) {
      return true;
    } else {
      return false;
    }
  }
}
