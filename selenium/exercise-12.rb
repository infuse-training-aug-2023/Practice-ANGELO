require "selenium-webdriver"
Selenium::WebDriver::Edge::Service.driver_path = "C:/Users/angel/Desktop/browserDrivers/msedgedriver.exe"
# driver = Selenium::WebDriver.for :edge

class AutomateWebsiteTesting
  def initialize
    $driver = Selenium::WebDriver.for :edge
    $wait = Selenium::WebDriver::Wait.new(:timeout => 11)
  end

  def open_website
    $driver.manage.window.maximize
    $driver.get "https://practise.usemango.co.uk/"
  end

  def login_website
    $driver.find_element(:link, "Login").click
    $driver.find_element(:id, "exampleInputEmail1").send_keys "angelo"
    $driver.find_element(:id, "exampleInputPassword1").send_keys "angelo"
    $driver.find_element(:css, "button.btn.btn-dark").click
  end

  def goto_products
    # product = $wait.until{ $driver.find_element(:xpath, '//*[@id="products"]') }
    product = $wait.until { $driver.find_element(:link_text, "Products") }
    if product.displayed?
      product.click
    end
    $driver.find_element(:xpath, '//select[contains(.,"Low to highHigh to low")]').click
    $driver.find_element(:xpath, '//option[.="High to low"]').click
  end

  def add_item_to_wishlist_and_cart
    $driver.find_element(:xpath, 'id("root")/div/div/div[2]/div[1]/div/div/div/div/a[1]/i').click
    $driver.find_element(:xpath, 'id("root")/div/div/div[2]/div[3]/div/div/div/div/a[1]/i').click
    $driver.find_element(:xpath, 'id("root")/div/div/div[2]/div[2]/div/div/div/div/a[2]/i').click
  end

  def goto_wishlist
    wishlist = $wait.until { $driver.find_element(:link_text, "Wishlist") }
    if wishlist.displayed?
      wishlist.click
    end
  end

  def goto_cart
    cart = $wait.until { $driver.find_element(:link_text, "Cart") }
    if cart.displayed?
      cart.click
    end
  end

  def quit_driver
    $driver.quit
  end
end

object = AutomateWebsiteTesting.new
object.open_website
object.login_website
sleep(1)
object.goto_products
object.add_item_to_wishlist_and_cart
object.goto_wishlist
object.goto_cart
object.quit_driver
