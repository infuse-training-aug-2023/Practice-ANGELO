require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://practise.usemango.co.uk/"
button = driver.find_element(:id, "showmorebtn")
button.click
driver.quit
