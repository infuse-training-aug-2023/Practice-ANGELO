require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://www.google.com/"
input = driver.find_element(:id, "APjFqb")
input.send_keys("Dog")
input.send_keys(:enter)

sleep(5)
driver.quit
