require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://testpages.herokuapp.com/styled/basic-html-form-test.html"

dropdown_list = driver.find_element(:name, "dropdown")
option_list = dropdown_list.find_elements(:tag_name, "option")[3]
puts option_list.text
driver.quit
