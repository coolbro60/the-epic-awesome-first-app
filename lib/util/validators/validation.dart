

class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    //Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'invalid email address.';
    }

    return null;
  }

  //TODO: MAKE THIS PASSWORD PROCESS SECURY???????????/ SO EASILY HACKABLE WTH
  ///ori video -> https://www.youtube.com/watch?v=3StjTeWs-ZQ&list=PL5jb9EteFAOAusKTSuJ5eRl1BapQmMDT6&index=4&ab_channel=CodingWithT
  static String? validatePassword (String? value) {
    if (value == null || value.isEmpty) {
      return 'Passwordis reuqired.';
    }

    //check for minimum password length
    if (value.length< 6) {
      return 'Password must be at least 6 characters long.';
    }

    return null;
  }

  static String? validatePhoneNumber (String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

    //assuming 10-digit US phone number format
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }

    return null;
  }

}