module SFLoginPage
  include PageObject

  text_field(:wEdit_UserName, :id => "username")
  text_field(:wEdit_Password, :id => "password")
  button(:wBut_LogIn, :id => "Login")

end