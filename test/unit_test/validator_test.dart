import 'package:flutter_application_1/valid/validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //로그인 또는 회원가입에서 회원이 있음
  Validator validator = Validator();

  group('이메일 값 검증 테스트', () {
    test('이메일에 @가 없을 때 false가 나와야한다.', () {
      expect(validator.isEmailValidated("wlsdnrdigh"), false);
    });

    test('이메일에 도메인을 안적으면 false가 나와야한다.', () {
      expect(validator.isEmailValidated("0514515@"), false);
    });

    test('이메일에 도메인을 완성하지 않으면 false가 나와야한다.', () {
      expect(validator.isEmailValidated("0514515@naver"), false);
    });

    test('이메일 정상 입력 케이스', () {
      expect(validator.isEmailValidated("wlsdnrdigh@naver.com"), true);
    });

    test('이메일 아이디를 적지 않으면 false가 나와야한다', () {
      expect(validator.isEmailValidated("@naver.com"), false);
    });

    test('이메일 회사명을 적지 않으면 false가 나와야한다', () {
      expect(validator.isEmailValidated("0514515@.com"), false);
    });

    test('이메일 아이디가 공백이면 안된다', () {
      expect(validator.isEmailValidated(' @naver.com'), false);
    });

    test('이메일 회사명이 공백이면 안된다', () {
      expect(validator.isEmailValidated('0514515@ .com'), false);
    });

    test('이메일 도메인에 .이 두개면 안된다', () {
      expect(validator.isEmailValidated('0514515@naver.com.net'), false);
    });

    test('이메일 아이디에 특수문자가 들어가면 안된다', () {
      expect(validator.isEmailValidated('!#^%":?>&*()_@naver.com'), false);
    });

    test('이메일 도메인에 특수문자가 들어가면 안된다', () {
      expect(validator.isEmailValidated('0514515@&^%.com'), false);
    });
  });

  group('비밀번호 값 검증 테스트', () {
    test('비밀번호가 8자리 이상 16자리가 아닐 때 false', () {
      expect(validator.isPasswordValidated("12345ef"), false);
      expect(validator.isPasswordValidated("123@5ef"), false);
      expect(validator.isPasswordValidated("1@a"), false);
      expect(validator.isPasswordValidated("1!a"), false);
      expect(validator.isPasswordValidated("123@5ef3123@5ef31"), false);
      expect(validator.isPasswordValidated("123@5ef3123@5ef3f"), false);
      expect(validator.isPasswordValidated("123@5ef3123@5ef3!"), false);
    });

    test('비밀번호에 공백이 있으면 false', () {
      expect(validator.isPasswordValidated("123e4 5ef"), false);
      expect(validator.isPasswordValidated("1  5ef"), false);
      expect(validator.isPasswordValidated("12 @5ef"), false);
      expect(validator.isPasswordValidated(" @a"), false);
      expect(validator.isPasswordValidated("1!a"), false);
      expect(validator.isPasswordValidated("123@  ef3123@5ef31"), false);
      expect(validator.isPasswordValidated("123@5e 3@5ef3!"), false);
    });
  });

  group('비밀번호 확인 검증 테스트', () {
    test('비밀번호와 확인이 같으면 true, 다르면 false', () {
      expect(
          validator.isPasswordSamedWithPasswordConfirm(
              "gf452k!23", "gf452k!23"),
          true);
      expect(
          validator.isPasswordSamedWithPasswordConfirm(
              "gf452k!23", "gf452k!3f5"),
          false);
    });
  });
}
