import 'package:flutter_application_1/regist/member_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //로그인 또는 회원가입에서 회원이 있음
  MemberModel memberModel = MemberModel();

  group('이메일 값 검증 테스트', () {
    test('이메일에 @가 없을 때 false가 나와야한다.', () {
      memberModel.setEmail("wlsdnrdigh");
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일에 도메인을 안적으면 false가 나와야한다.', () {
      memberModel.setEmail("0514515@");
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일에 도메인을 완성하지 않으면 false가 나와야한다.', () {
      memberModel.setEmail("0514515@naver");
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일 정상 입력 케이스', () {
      memberModel.setEmail("wlsdnrdigh@naver.com");
      expect(memberModel.isEmailValidated(), true);
    });

    test('이메일 아이디를 적지 않으면 false가 나와야한다', () {
      memberModel.setEmail("@naver.com");
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일 회사명을 적지 않으면 false가 나와야한다', () {
      memberModel.setEmail("0514515@.com");
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일 아이디가 공백이면 안된다', () {
      memberModel.setEmail(' @naver.com');
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일 회사명이 공백이면 안된다', () {
      memberModel.setEmail('0514515@ .com');
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일 도메인에 .이 두개면 안된다', () {
      memberModel.setEmail('0514515@naver.com.net');
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일 아이디에 특수문자가 들어가면 안된다', () {
      memberModel.setEmail('!#^%":?>&*()_@naver.com');
      expect(memberModel.isEmailValidated(), false);
    });

    test('이메일 도메인에 특수문자가 들어가면 안된다', () {
      memberModel.setEmail('0514515@&^%.com');
      expect(memberModel.isEmailValidated(), false);
    });
  });
}
