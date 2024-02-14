# Test Scenarios for Student settings
# Test Set ID ....
# Author : Anna V
@student
Feature: Student settings

  @student1 @smoke
  Scenario: Student change name in Settings with 2 words
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I type "samklittle@likevip.net" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then element with xpath "//p[contains(text(),'STUDENT')]" should contain text "STUDENT"
#     Logged in and Land on Main page
    And I click on element with xpath "//h5[contains(text(),'Settings')]"
#      land on Settings page
    Then I wait for element with xpath "//h4[contains(text(),'Settings')]" to be present
    And element with xpath "//h4[contains(text(),'Settings')]" should contain text "Settings"
    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
#      popup window is opened
    When I clear element with xpath "//input[@formcontrolname='name']"
    And I type "New name" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']/../..//span[contains(text(),'Change')]"
#      Verification that updated name is displayed on the page
    Then I wait for element with xpath "//h3[contains(text(),'New name')]" to be present
    Then element with xpath "//h3[contains(text(),'New name')]" should contain text "New name"
    Then element with xpath "//td[contains(text(),'New name')]" should contain text "New name"

  @student2
  Scenario: Student change name in Settings with 1 words
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I type "samklittle@likevip.net" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(),'STUDENT')]" to be present
    Then element with xpath "//p[contains(text(),'STUDENT')]" should contain text "STUDENT"
#     Logged in and Land on Main page
    And I click on element with xpath "//h5[contains(text(),'Settings')]"
#      land on Settings page
    Then I wait for element with xpath "//h4[contains(text(),'Settings')]" to be present
    And element with xpath "//h4[contains(text(),'Settings')]" should contain text "Settings"
    Then I click on element with xpath "//span[contains(text(),'Change Your Name')]"
#      popup window is opened
    When I clear element with xpath "//input[@formcontrolname='name']"
    And I type "Newname" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element with xpath "//div[@class='mat-dialog-actions']/../..//span[contains(text(),'Change')]"
#      Verification that updated name is displayed on the page
    Then I wait for element with xpath "//h3[contains(text(),'Newname')]" to be present
    Then element with xpath "//h3[contains(text(),'Newname')]" should contain text "Newname"
    Then element with xpath "//td[contains(text(),'Newname')]" should contain text "Newname"





