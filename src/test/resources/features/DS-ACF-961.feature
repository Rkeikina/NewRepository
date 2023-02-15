Feature: ACF-961 Student-Settings Change Password

  @ask1
  Scenario: Change student password Positive

    Given I open url "http://ask-internship.portnov.com/"
    Then I type "student3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "12345ABc" into element with xpath "//input[@type='password']"
    When I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
    Then element with xpath "//mat-list[@class='mat-list']" should be present
    When I click on element with xpath "//h5[contains(text(),'Settings')]"
    Then element with xpath "//span[text()='Change Your Password']" should be present
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then element with xpath "//mat-dialog-container[@role='dialog']" should be present
    And element with xpath "//span[text()='Change']/.." should be disabled
    Then I type "12345ABc" into element with xpath "//input[@placeholder='Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='New Password']"
    Then I type "12345" into element with xpath "//input[@placeholder='Confirm New Password']"
    And element with xpath "//span[text()='Change']/.." should be enabled
    When I click on element with xpath "//span[text()='Change']/.."
    And element with xpath "//mat-list[@class='mat-list']" should be present
    Then I click on element with xpath "//mat-list-item[@class='mat-list-item']"
    And I click on element with xpath "//span[text()='Log Out']"
    Then I wait for 5 sec
    Then element with xpath "//img[@class='center-logo']" should be present
    Then I type "student3@gmail.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "12345" into element with xpath "//input[@type='password']"
    When I click on element with xpath "//button[@class='mat-raised-button mat-primary']"
    Then element with xpath "//mat-list[@class='mat-list']" should be present
    Then I wait for 3 sec
    When I click on element with xpath "//h5[contains(text(),'Settings')]"
    Then element with xpath "//span[text()='Change Your Password']" should be present
    Then I click on element with xpath "//span[text()='Change Your Password']"
    Then element with xpath "//mat-dialog-container[@role='dialog']" should be present
    And element with xpath "//span[text()='Change']/.." should be disabled
    Then I type "12345" into element with xpath "//input[@placeholder='Password']"
    Then I type "12345ABc" into element with xpath "//input[@placeholder='New Password']"
    Then I type "12345ABc" into element with xpath "//input[@placeholder='Confirm New Password']"
    And element with xpath "//span[text()='Change']/.." should be enabled
    When I click on element with xpath "//span[text()='Change']/.."
    And element with xpath "//mat-list[@class='mat-list']" should be present
    Then I click on element with xpath "//mat-list-item[@class='mat-list-item']"
    And I click on element with xpath "//span[text()='Log Out']"
    Then I wait for 3 sec



    