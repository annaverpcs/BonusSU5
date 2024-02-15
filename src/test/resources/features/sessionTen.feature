# Test Scenarios for Quiz Creation
# Test Set ID ....
# Author : Anna V

Feature: Quizzes

  Scenario: Single Choice Quiz Creation
    Given I open url "http://ask-int.portnov.com/#/login"
    Then I type "annapcsteacher@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345ABc" into element with xpath "//input[@formcontrolname='password']"
    And I click on element with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(),'TEACHER')]" should contain text "TEACHER"
#      Go to Quizzes
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
#      create new quiz
    Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 2 sec
#    Add quiz title
    Then I type "00001 Session 10 Quiz1" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
#    select single Choice question
    Then I click on element with xpath "//mat-radio-button[2]"
    Then I type "The Question" into element with xpath "//textarea[@formcontrolname='question']"
    Then I type "Answer 1 Correct " into element with xpath "//textarea[@placeholder='Option 1*']"
    Then I type "Answer 2 Incorrect " into element with xpath "//textarea[@placeholder='Option 2*']"
    And I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
    And I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
#    verify that this quiz is in the list of quizzes
    Then element with xpath "//mat-panel-title[contains(text(),'00001 Session 10 Quiz1')]" should contain text "00001 Session 10 Quiz1"
#    delete a quiz
    Then I click on element with xpath "//mat-panel-title[contains(text(),'00001 Session 10 Quiz1')]"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'00001 Session 10 Quiz1')]/../../..//button[@class='mat-raised-button mat-warn']"
    And I click on element with xpath "//div[@class='mat-dialog-actions']//span[contains(text(),'Delete')]"
    And I wait for 4 sec
    Then element with xpath "//mat-panel-title[contains(text(),'00001 Session 10 Quiz1')]" should not be present



    
    