abstract class RegisterEvent {}

class RegisterStartEvent extends RegisterEvent {}

class RegisterRequestEvent extends RegisterEvent {
  String first_name;
  String last_name;
  int national_code;
  int mobile;
  int birthday;
  RegisterRequestEvent(this.first_name, this.last_name, this.national_code,
      this.mobile, this.birthday);
}
