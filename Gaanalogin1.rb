require "test/unit"

class Gaanalogin < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
#Define the excel file
    excel= WIN32OLE::new("excel.Application")
    wrkbook=excel.Workbooks.Open("C:\\test.xls")
    wrksheet = wrkbook.worksheets(1)
    wrksheet.select

#read the data from excel file
    rows = 2
    while    rows <= 2
      $username=wrksheet.cells(rows,"A").text
      puts $field
      $password=wrksheet.cells(rows,"B").text
      $fullname=wrksheet.cells(rows,"C").text

      @@browser.a(:id,"joinus").click
      @@browser.text_field(:id,"fullname").wait_until_present
      @@browser.text_field(:id,"fullname").set($fullname)
      @@browser.text_field(:id,"email").set($username)
      #browser.text_field(:id,"Password").wait_until_present
      @@browser.text_field(:id,"password").set($password)
      @@browser.checkbox(:id,"agree").set
      @@browser.a(:id, "save" ).click
      sleep 30

      rows=rows+1

    end
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