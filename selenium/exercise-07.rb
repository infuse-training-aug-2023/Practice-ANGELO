require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://testpages.herokuapp.com/styled/basic-html-form-test.html"

dropdown_list = driver.find_element(:name, "dropdown")

click_dropdown = Selenium::WebDriver::Support::Select.new(dropdown_list)

select_option = click_dropdown.options[3]
select_option.click

puts select_option.attribute("value")
driver.quit
