
#require "C:\Ruby193\lib\ruby\gems\1.9.1\gems\rack-1.4.0\lib\rack\logger.rb

require 'watir-webdriver'
require 'test-unit'
require 'win32ole'
require "test-helper"

class TC_Login < Test::Unit::TestCase
	@@browser = Watir::Browser.new :ff
	@@browser.goto "uat.gaana.com"
	@@browser.window.maximize
	sleep 30
	#browser.driver.manage.timeouts.implicit_wait = 10
	@@browser.a(:class,"closeBtn").wait_until_present
	@@browser.a(:class,"closeBtn").click
	


def test_login
 
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
	@@browser.div(:id, 'lightmodalContent').wait_until_present
	assert( @@browser.div(:id, 'lightmodalContent').exists? )
	#@@browser.div(:id,"settingTab4_content").wait_until_present
    @@browser.a(:class,"closeBtn").wait_until_present
	@@browser.a(:class,"closeBtn").click
	sleep 5
	@@browser.span(:class, "arrowDwn").wait_until_present
	@@browser.span(:class, "arrowDwn").click
	#@@browser.div(:onclick, "lightModal.reload('settings.php?tabAction=password')" ).wait_until_present
	@@browser.a(:class, "usrSetting" ).wait_until_present
	@@browser.a(:class, "usrSetting" ).click
	sleep 10
	@@browser.li(:id, "settingTab5" ).click
	@@browser.input(:id,"oldpassword").wait_until_present
	@@browser.input(:id,"oldpassword").send_keys "gitam@123"
	@@browser.input(:id,"newpassword").send_keys "gitam@1234"
	@@browser.input(:id,"confirmpassword").send_keys "gitam@1234"
	@@browser.a(:id, "save" ).wait_until_present
	@@browser.a(:id, "save" ).click
	@@browser.td(:class, 'icons confirm txt').wait_until_present
	assert( @@browser.td(:class, 'icons confirm txt').exists? )
	@@browser.span(:class, "arrowDwn" ).click
	@@browser.a(:class, "signOut" ).wait_until_present
	@@browser.a(:class, "signOut" ).click
	#@@browser.a(:id, "save" ).wait_until_present
	#@@browser.a(:id, "save" ).click
	@@browser.a(:xpath, "/html/body/table/tbody/tr/td/div[2]/div/div[3]/ul/li[2]/a" ).wait_until_present
	@@browser.a(:xpath, "/html/body/table/tbody/tr/td/div[2]/div/div[3]/ul/li[2]/a" ).click
	@@browser.div(:class, "LoginContainer" ).wait_until_present
	@@browser.input(:id, "username").send_keys($username)
	@@browser.input(:id, "password").send_keys "gitam@1234"
	@@browser.a(:id, "btnsignin" ).wait_until_present
	@@browser.a(:id, "btnsignin" ).click
	
	
	
	
	rows=rows+1

end
end
end