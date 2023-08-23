require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://cosmocode.io/automation-practice-webtable/"

table = driver.find_element(:tag_name, "tr")
table_header = table.find_elements(:tag_name, "strong")

table_header.each do |value|
  puts value.text
end
driver.quit
