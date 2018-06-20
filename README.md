Airbnb Search Test
===========================

This is the automated test for searching a location and applying filters on www.airbnb.co.in using [Watir](http://watirwebdriver.com/) framework.

The package consists of folders like helpers, page objects and tests.

* Helpers consists of Constant file which has all the strings hardcoded.

* Page object file consists of the page elements needed for the automated tests

* Tests folder consists of the actual ruby/watir E2E tests.

Setup on Mac OS X
=================

Tools Used:
-----------

1. Mac with `sudo` Access
2. Xcode with command line tools installed. The command line tools can be installed from Xcode -> Preferences -> Downloads
3. RVM (optional)
4. Ruby 2.5.0
5. Watir-Webdriver

Installation
============

#### 1. Install all the necessary tools

#### 2. Install the bundler gem

		gem install bundler --no-ri --no-rdoc

#### 3. Install necessary gems using bundler [or install all the gems individually as specified in Gemfile]

		bundle install
    
How to run tests
================
After navigating to /Test-Project/tests/, run the following command:
      
            ruby searchtest.rb
   
Notes:
======
I have added implicit sleep statements in between the test steps so as to give some some time for eyes to catch the actions. If not, the tests are super-fast that it is difficult to notice and understand what is happening.
