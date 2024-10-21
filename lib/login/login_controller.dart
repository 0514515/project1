import 'package:flutter_application_1/regist/member_model.dart';
import 'package:flutter_application_1/valid/validator.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController {
  Rx<MemberModel> member = MemberModel().obs;
  RxString emailAlertText = "".obs;
  RxString passwordAlertText = "".obs;
  RxBool isEmailTextFieldValidated = false.obs;
  RxBool isPasswordTextFieldValidated = false.obs;

  Validator validator = Validator();

  void inputEmail(String email) {
    member.value.setEmail(email);
  }

  void inputPassword(String password) {
    member.value.setPassword(password);
  }

  void validateEmailAndSetEmailAlertText() {
    if (!validator.isEmailValidated(member.value.getEmail())) {
      emailAlertText.value = "이메일을 입력해주세요";
      isEmailTextFieldValidated.value = false;
    } else {
      emailAlertText.value = "";
      isEmailTextFieldValidated.value = true;
    }
  }

  void validateEmailAndSetPasswordAlertText() {
    if (!validator.isPasswordValidated(member.value.getPassword())) {
      passwordAlertText.value = "비밀번호 8~16자리를 입력해주세요\n(숫자, 영어, 특수문자 최소 1개 포함)";
      isPasswordTextFieldValidated.value = false;
    } else {
      passwordAlertText.value = "";
      isPasswordTextFieldValidated.value = true;
    }
  }
}
