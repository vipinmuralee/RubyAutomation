Given(/^I login to Open Cart Application$/) do
  Comp.Login($data["url"], $data["username"], $data["[password]"])
end

And(/^I close the browser$/) do
  Comp.Logout
end