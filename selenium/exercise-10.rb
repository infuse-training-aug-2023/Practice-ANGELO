require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://computer-database.gatling.io/computers"

table = driver.find_element(:xpath, '//table[starts-with(.,"Computer nameIntroducedDiscontinuedCompanyACE---AN/FSQ-3201")]')
table_rows = table.find_elements(:xpath, ".//tbody/tr")

table_rows.each do |value|
  puts value.find_elements(:tag_name, "td")[1].text
end
driver.quit
