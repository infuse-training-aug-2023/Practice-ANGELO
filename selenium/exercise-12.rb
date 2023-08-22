require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
driver = Selenium::WebDriver.for :edge
driver.manage.window.maximize

wait = Selenium::WebDriver::Wait.new(:timeout => 20)
driver.get "https://practise.usemango.co.uk/"

driver.find_element(:id, "products").click
driver.find_element(:xpath, '//select[contains(.,"Low to highHigh to low")]').click
driver.find_element(:xpath, '//option[.="High to low"]').click
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[1]/div[2]/select').click
driver.find_element(:xpath, '//*[@id="root"]/div/div/div[1]/div[2]/select/option[2]').click

driver.find_element(:xpath, 'id("root")/div/div/div[2]/div[1]/div/div/div/div/a[1]/i').click
driver.find_element(:xpath, 'id("root")/div/div/div[2]/div[2]/div/div/div/div/a[2]/i').click
driver.find_element(:xpath, 'id("root")/div/div/div[2]/div[3]/div/div/div/div/a[1]/i').click

wishlist = wait.until { driver.find_element(:link_text, "Wishlist") }
wishlist.click()
driver.find_element(:css, "div:nth-child(2).row.mt-2 > div:last-child.col-lg-2.col-md-3.col-12.col-sm-12.d-flex.flex-column.justify-content-center > div:first-child.btn.btn-success.btn-sm").click

cart = wait.until { driver.find_element(:link_text, "Cart") }
if cart.displayed?
  cart.click
end

driver.find_element(:link, "Login").click
driver.find_element(:id, "exampleInputEmail1").send_keys "angelo"
driver.find_element(:id, "exampleInputPassword1").send_keys "angelo"
driver.find_element(:css, "button.btn.btn-dark").click

driver.quit
