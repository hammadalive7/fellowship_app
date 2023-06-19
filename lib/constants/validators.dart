
String emailValidator(String email){
  if(email.isEmpty){
    return 'Email is required';
  }
  else{
    String pattern = r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
    RegExp regExp = RegExp(pattern);
    if(!regExp.hasMatch(email)){
      return 'Invalid email';
    } else {
      return "";
    }
  }
}

String passwordValidator(String password){
  if(password.isEmpty){
    return 'Password is required';
  }
  else{
    String pattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
    RegExp regExp = RegExp(pattern);
    if(!regExp.hasMatch(password)){
      return 'Invalid password';
    } else {
      return "";
    }
  }
}

String nameValidator(String name){
  if(name.isEmpty){
    return 'Name is required';
  }
  else{
    String pattern = r'^[a-zA-Z ]+$';
    RegExp regExp = RegExp(pattern);
    if(!regExp.hasMatch(name)){
      return 'Invalid name';
    } else {
      return "";
    }
  }
}

bool confirmPasswordValidator(String password, String confirmPassword){
  if(password == confirmPassword){
    return true;
  }
  else{
    return false;
  }
}

