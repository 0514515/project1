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

  String getEmail() {
    return _email;
  }

  String getAuthNumber() {
    return _authNumber;
  }

  String getPassword() {
    return _password;
  }

  String getPasswordConfirm() {
    return _passwordConfirm;
  }
}
