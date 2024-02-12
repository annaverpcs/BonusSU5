@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//*[@name='q']" should be present
    When I type "Cucumber" into element with xpath "//*[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber"

    @ask
    Scenario: Student Registration
      Given I open url "http://ask-int.portnov.com/#/registration"
      Then element with xpath "//h4[contains(text(),'Registration')]" should contain text "Registration"
      Then I type "Anna" into element with xpath "//input[@formcontrolname='firstName']"
      Then I type "LastName" into element with xpath "//input[@formcontrolname='lastName']"
      And I type "emailforannalastname@gmail.com" into element with xpath "//input[@formcontrolname='email']"
      Then I type "123" into element with xpath "//input[@formcontrolname='group']"
      And I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
      Then I type "12345ABc" into element with xpath "//input[@formcontrolname='confirmPassword']"
      And I click on element with xpath "//button[@type='submit']"
      #Verification on Registration-Confirmation page
      Then I wait for element with xpath "//h4[contains(text(),'You have been Registered.')]" to be present
      #Then element with xpath "//h4[contains(text(),'You have been Registered.')]" should be present
      And element with xpath "//h4[contains(text(),'You have been Registered.')]" should contain text "You have been Registered"
      Then I wait for 5 sec


  @ask
  Scenario: Student Registration with invalid email
    Given I open url "http://ask-int.portnov.com/#/registration"
    Then element with xpath "//h4[contains(text(),'Registration')]" should contain text "Registration"
    Then I type "Anna" into element with xpath "//input[@formcontrolname='firstName']"
    Then I type "LastName" into element with xpath "//input[@formcontrolname='lastName']"
    And I type "invalidformat" into element with xpath "//input[@formcontrolname='email']"
    Then I type "123" into element with xpath "//input[@formcontrolname='group']"
    And I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
    Then I type "12345ABc" into element with xpath "//input[@formcontrolname='confirmPassword']"
    And I click on element with xpath "//button[@type='submit']"
    #Verification for invalid email
    Then element with xpath "//mat-error[contains(text(),'Should be a valid email address')]" should be present


