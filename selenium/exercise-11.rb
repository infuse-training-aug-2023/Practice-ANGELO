require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://the-internet.herokuapp.com/tables"
table = driver.find_element(:id, "table1")
table_row = table.find_elements(:xpath, ".//tbody/tr")[2]
table_column = table_row.find_elements(:tag_name, "td")[3]

puts table_column.text
driver.quit
