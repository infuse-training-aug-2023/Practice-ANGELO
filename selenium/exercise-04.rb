require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

driver.get "https://demo.automationtesting.in/Register.html"
checkbox = driver.find_element(:id, "checkbox1")
checkbox.click
radiobutton = driver.find_element(:css, "label > input.ng-pristine.ng-untouched.ng-invalid.ng-invalid-required")
radiobutton.click

sleep(5)
driver.quit
