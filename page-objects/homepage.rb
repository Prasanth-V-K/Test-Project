require 'rubygems'
require 'watir'
require 'page-object'
require 'test/unit/assertions'
include Test::Unit::Assertions

class HomePage
    include PageObject
    text_field(:search_box, id: 'Koan-via-Page0__input')
    text_field(:search_bar, id: 'GeocompleteController-via-SearchBarV2-SearchBarV2')
    link(:experiences, text: 'Experiences')
    div(:price_range, class: '_17u98ky', text: 'Price')
    div(:date_range, class: '_17u98ky', text: 'Dates')
    div(:guests, class: '_17u98ky', text: 'Guests')
    table(:start_table, class: '_p5jgym')
    button(:increment_button, xpath: "(//button[@class='_qz4lhy5'])[4]")
    button(:apply, class: '_n5wk6ic')
    span(:guests_span, text: '2 guests')
    td(:start_date, xpath: "//td[@tabindex=0]")
    button(:next_button, class: '_121ogl43')
    td(:end_date, xpath: "(//td[@tabindex=-1])[90]")
    div(:first_result, xpath: "(//*[@class='_o71trrf'])[1]")
    div(:third_result, xpath: "(//*[@class='_o71trrf'])[3]")
end 


