require 'watir'
require 'page-object'

module Comp

  def self.Login(strUrl, strName, strPass)
    @browser = Watir::Browser.new :chrome
    @browser.goto(strUrl)
    puts "Success"
    @browser.text_field(:id => "username").send_keys "hello"
    @browser.text_field(:id => "password").send_keys "hello"
    @browser.button(:id => "Login").click
  end

  def self.Logout
    @browser.close
  end
end