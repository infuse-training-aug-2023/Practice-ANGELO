require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

wait = Selenium::WebDriver::Wait.new(:timeout => 11)

driver.get "https://letcode.in/forms"

dropdown_list = wait.until { driver.find_element(:css, "div:nth-child(5).columns.container > div:last-child.column.is-half > div.field > div.control") }
option_list = wait.until { dropdown_list.find_elements(:tag_name, "option") }

option_list.each do |values|
  puts values.text
end

driver.quit
