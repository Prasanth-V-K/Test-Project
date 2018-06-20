# Watir controller
require 'watir'
require 'test/unit'
# Constants
require '../helpers/constants'
# Page objects
require '../page-objects/homepage'

test_url = "#{SITE_URL}"

# Open a chrome browser
browser = Watir::Browser.new :chrome

# Declaring the instance for class Home Page
home_page = HomePage.new(browser)

puts " Step 1  : Navigate to the test site: #{test_url}"
home_page.goto test_url

puts " Step 2  : Feeding in the location #{SEARCH_TEXT} in the search bar"
if ( home_page.search_box_element.present? )
    home_page.search_box_element.set("#{SEARCH_TEXT}")
    sleep(5) 
    home_page.send_keys( [:enter] )   
elsif ( home_page.search_bar_element.present? )
    home_page.search_bar_element.set("#{SEARCH_TEXT}")
    sleep(5)
    home_page.send_keys( [:enter] )   
end

sleep(5)

puts " Step 3  : Selecting the 'Experiences' option"
home_page.experiences_element.present?
home_page.experiences_element.click

puts " Step 4  : Verify if the 'Prices' filter is enabled after selecting the 'Experiences' option"
home_page.price_range_element.present? 

puts " Step 5  : Clicking on Date filter"

home_page.date_range_element.click

puts " Step 6  : Clicking on Start Date button"

home_page.start_date_element.click

sleep(5)

puts " Step 7  : Clicking on next button"

home_page.next_button_element.click

sleep(5)

puts " Step 8  : Clicking on End Date button"

home_page.end_date_element.click

puts " Step 9  : Clicking on Apply button for Date filter"

home_page.apply_element.click

sleep(5)

puts " Step 10 : Clicking on Guests filter"

home_page.guests_element.click

puts " Step 11 : Incrementing the no.of Children in Guests"

home_page.increment_button_element.click

puts " Step 12 : Clicking on Apply button for Guests filter"

home_page.apply_element.click

puts " Step 13 : Verify that the no.of Guests is incremented"

home_page.guests_span_element.present?

sleep(5)

puts " Step 14 : Clicking on Price filter"

home_page.price_range_element.click

puts " Step 15 : Clicking on Apply button for Price filter"

home_page.apply_element.click

sleep(5)

puts " Step 16 : Clicking on the first result"

home_page.first_result_element.click

sleep(5)

puts " Step 17 : Navigating to the first result tab"

home_page.driver.switch_to.window(browser.driver.window_handles[1])

sleep(10)

puts " Step 18 : Closing the first result tab"

home_page.windows.last.close

puts " Step 19 : Navigating back to the search result page"

home_page.driver.switch_to.window(browser.driver.window_handles[0])

sleep(10)

puts " Step 20 : Clicking on the third result"

home_page.third_result_element.click

sleep(10)

puts " Step 21 : Navigating to the third result tab"

home_page.driver.switch_to.window(browser.driver.window_handles[1])

sleep(10)

puts " Step 22 : Closing the third result tab"

home_page.windows.last.close

puts " Step 23 : Navigating back to the search result page"

home_page.driver.switch_to.window(browser.driver.window_handles[0])

sleep(10)

puts " Step 24 : Closing the browser"

home_page.close