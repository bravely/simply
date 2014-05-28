require 'selenium-webdriver'

class HomeController < ApplicationController
  def index
  end

  def search
    driver = Selenium::Webdriver.for(:remote, url: 'http://localhost:9134')
    driver.navigate.to 'http://www.cigna.com/web/public/hcpdirectory'

    doctor_element = driver.find_element(:name, 'lookingForText')
    doctor_element.send_keys params[:doctor_name]

    location_element = driver.find_element(:name, 'searchLocation')
    doctor_element.send_keys params[:location]

    @name = driver.title
  end
end
