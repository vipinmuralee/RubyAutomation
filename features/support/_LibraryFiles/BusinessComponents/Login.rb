require 'watir'
require 'page-object'

module Comp

  def self.Login(strUrl, strName, strPass)
    @browser = Watir::Browser.new :chrome
    @browser.goto(strUrl)
    puts "Success"
    on(SFLoginPage).enterText("wEdit_UserName", strName)
    on(SFLoginPage).enterText("wEdit_Password", strPass)
  end

  def self.Logout
    @browser.close
  end
end