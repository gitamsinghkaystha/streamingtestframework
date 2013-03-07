require "watir-webdriver"
require "test/unit"
require 'win32ole'

class Homepage < Test::Unit::TestCase
  # Called before every test method runs. Can be used
  # to set up fixture information.
  @@browser = Watir::Browser.new :ff
  @@browser.goto "uat.gaana.com"
  @@browser.window.maximize
  sleep 30
  #browser.driver.manage.timeouts.implicit_wait = 10
  @@browser.a(:class,"closeBtn").wait_until_present
  @@browser.a(:class,"closeBtn").click

  def setup

  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Fake test
  def test_fail

    # To change this template use File | Settings | File Templates.
    fail("Not implemented")
  end
end