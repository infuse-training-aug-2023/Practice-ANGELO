require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge

wait = Selenium::WebDriver::Wait.new(:timeout => 11)

driver.get "https://www.globalsqa.com/demo-site/sliders/#Steps"

iframe = driver.find_element(:xpath, '//*[@id="post-2673"]/div[2]/div/div/div[3]/p/iframe')
driver.switch_to.frame iframe

slider = wait.until { driver.find_element(:id, "slider") }
driver.action.drag_and_drop_by(slider, 11, 0).perform

slide_value = driver.find_element(:id, "amount")

puts slide_value.attribute("value")
driver.quit
