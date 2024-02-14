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

    @ask @smoke
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


  @ask1
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

  @ask3
  Scenario Outline: Student Registration
    Given I open url "http://ask-int.portnov.com/#/registration"
    Then element with xpath <xpath> should contain text <text>
    Then I type <text1> into element with xpath <xpath1>
    Then I type <text2> into element with xpath <xpath2>
    And I type <text3> into element with xpath <xpath3>
    Then I type <text4> into element with xpath <xpath4>
    And I type <text5> into element with xpath <xpath5>
    Then I type <text5> into element with xpath <xpath6>
    And I click on element with xpath <xpath7>
    Then I wait for element with xpath <xpath8> to be present
    And element with xpath <xpath8> should contain text <text6>
    Then I wait for <sec> sec
    Examples:
      | xpath                                   | text           | text1  | xpath1                                  | text2      | xpath2                                 | text3                            | xpath3                              | text4 | xpath4                              | text5      | xpath5                                 | xpath6                                        | xpath7                     | xpath8                                               | text6                      | sec |
      | "//h4[contains(text(),'Registration')]" | "Registration" | "Anna" | "//input[@formcontrolname='firstName']" | "LastName" | "//input[@formcontrolname='lastName']" | "emailforannalastname@gmail.com" | "//input[@formcontrolname='email']" | "123" | "//input[@formcontrolname='group']" | "12345ABc" | "//input[@formcontrolname='password']" | "//input[@formcontrolname='confirmPassword']" | "//button[@type='submit']" | "//h4[contains(text(),'You have been Registered.')]" | "You have been Registered" | 5   |
      | "//h4[contains(text(),'Registration')]" | "Registration" | "Anna" | "//input[@formcontrolname='firstName']" | "LastName" | "//input[@formcontrolname='lastName']" | "emailforannalastname@gmail.com" | "//input[@formcontrolname='email']" | "123" | "//input[@formcontrolname='group']" | "12345ABc" | "//input[@formcontrolname='password']" | "//input[@formcontrolname='confirmPassword']" | "//button[@type='submit']" | "//h4[contains(text(),'You have been Registered.')]" | "You have been Registered" | 5   |
      | "//h4[contains(text(),'Registration')]" | "Registration" | "Anna" | "//input[@formcontrolname='firstName']" | "LastName" | "//input[@formcontrolname='lastName']" | "emailforannalastname@gmail.com" | "//input[@formcontrolname='email']" | "123" | "//input[@formcontrolname='group']" | "12345ABc" | "//input[@formcontrolname='password']" | "//input[@formcontrolname='confirmPassword']" | "//button[@type='submit']" | "//h4[contains(text(),'You have been Registered.')]" | "You have been Registered" | 5   |
