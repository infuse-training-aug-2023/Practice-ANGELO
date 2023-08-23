require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

wait = Selenium::WebDriver::Wait.new(:timeout => 11)

driver.get "https://letcode.in/forms"

dropdown_list = wait.until { driver.find_element(:xpath, '//select[starts-with(.,"AfghanistanÅland IslandsAlbaniaAlgeriaAmerican")]') }
click_dropdown = Selenium::WebDriver::Support::Select.new(dropdown_list)

option_list = click_dropdown.options

option_list.each do |values|
  puts values.text
end

driver.quit
