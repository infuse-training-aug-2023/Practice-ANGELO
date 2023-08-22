require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://computer-database.gatling.io/computers"

table = driver.find_element(:tag_name, "tbody")
table_column = table.find_elements(:tag_name, "a")

table_column.each do |value|
  puts value.text
end
driver.quit
