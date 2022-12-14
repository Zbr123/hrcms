@UpdateProfile
Feature: Update Profile

  @Update @UpdateProfile1
  Scenario: Validate the establishment id error
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "hikma"
    Then    [Sign Up] User enter the email "hikma"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    And     [Update Profile] User the address "asdfghjkl;1234567890"
    And     [Update Profile] Select the state "Dubai"
    When    [Update Profile] User enter the city "Dubai"
    Then    [Update Profile] User enter the document name "Trade License"
    And     [Update Profile] User enter the document tittle "personal details"
    Then    [Update Profile] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Update Profile] User enter the expire year 2030
    Then    [Update Profile] User enter the expire month "Oct"
    And     [Update Profile] User enter the expire day "31"
    Then     [Update Profile] User tap on browse file
    #Then    [Update Profile] User upload the personal document
    And     [Update Profile] User enter the submit button
    Then    [Update Profile] Validate the establishment id error "Please enter establishment Id"

  Scenario: Validate the address error message
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "hikma"
    Then    [Sign Up] User enter the email "hikma"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    Then    [Update Profile] User enter the establishment id ""
    And     [Update Profile] Select the state "Dubai"
    When    [Update Profile] User enter the city "Dubai"
    Then    [Update Profile] User enter the document name "Trade License"
    And     [Update Profile] User enter the document tittle "personal details"
    Then    [Update Profile] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Update Profile] User enter the expire year 2030
    Then    [Update Profile] User enter the expire month "Oct"
    And     [Update Profile] User enter the expire day "31"
    Then     [Update Profile] User tap on browse file
    #Then    [Update Profile] User upload the personal document
    And     [Update Profile] User enter the submit button
    Then    [Update Profile] Validate the address error "Please enter address 1"

  Scenario: Validate the state error
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "hikma"
    Then    [Sign Up] User enter the email "hikma"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    Then    [Update Profile] User enter the establishment id ""
    And     [Update Profile] User the address "asdfghjkl;1234567890"
    When    [Update Profile] User enter the city "Dubai"
    Then    [Update Profile] User enter the document name "Trade License"
    And     [Update Profile] User enter the document tittle "personal details"
    Then    [Update Profile] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Update Profile] User enter the expire year 2030
    Then    [Update Profile] User enter the expire month "Oct"
    And     [Update Profile] User enter the expire day "31"
    Then     [Update Profile] User tap on browse file
    And     [Update Profile] User enter the submit button
    Then    [Update Profile] Validate the state error "Please enter state"

  Scenario: User try to upload profile and validate the error message on the country "Please enter city"
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "hikma"
    Then    [Sign Up] User enter the email "hikma"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    Then    [Update Profile] User enter the establishment id ""
    And     [Update Profile] User the address "asdfghjkl;1234567890"
    And     [Update Profile] Select the state "Dubai"
    Then    [Update Profile] User enter the document name "Trade License"
    And     [Update Profile] User enter the document tittle "personal details"
    Then    [Update Profile] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Update Profile] User enter the expire year 2030
    Then    [Update Profile] User enter the expire month "Oct"
    And     [Update Profile] User enter the expire day "31"
    Then     [Update Profile] User tap on browse file
    And     [Update Profile] User enter the submit button
    Then    [Update Profile] user try to login and validate the city  error "Please enter city"

  Scenario: user try to login and validate the document name  error "Please enter Document Title"
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "hikma"
    Then    [Sign Up] User enter the email "hikma"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    Then    [Update Profile] User enter the establishment id ""
    And     [Update Profile] User the address "asdfghjkl;1234567890"
    And     [Update Profile] Select the state "Dubai"
    When    [Update Profile] User enter the city "Dubai"
    And     [Update Profile] User enter the document tittle "personal details"
    Then    [Update Profile] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Update Profile] User enter the expire year 2030
    Then    [Update Profile] User enter the expire month "Oct"
    And     [Update Profile] User enter the expire day "31"
    Then     [Update Profile] User tap on browse file
    And     [Update Profile] User enter the submit button
    Then    [Update Profile] user try to login and validate the document no  error "Please enter Document Title"

  Scenario: User try to login and validate the issue and expire  date  error "Please enter issue date" "
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "hikma"
    Then    [Sign Up] User enter the email "hikma"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    Then    [Update Profile] User enter the establishment id ""
    And     [Update Profile] User the address "asdfghjkl;1234567890"
    And     [Update Profile] Select the state "Dubai"
    When    [Update Profile] User enter the city "Dubai"
    Then    [Update Profile] User enter the document name "Trade License"
    Then    [Update Profile] User tap on browse file
    And     [Update Profile] User enter the submit button
    Then    [Update Profile] User try to login and validate the issue date  error "Please enter issue date"
    And     [Update Profile] User try to login and validate the expire date  error "Please enter expiry date"


  Scenario: User Upload multiple document and validate error message on the document name "Please enter Document Title"
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "hikma"
    Then    [Sign Up] User enter the email "hikma"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    Then    [Update Profile] User enter the establishment id ""
    And     [Update Profile] User the address "asdfghjkl;1234567890"
    And     [Update Profile] Select the state "Dubai"
    When    [Update Profile] User enter the city "Dubai"
    Then    [Update Profile] User enter the document name "Trade License"
    And     [Update Profile] User enter the document tittle "personal details"
    Then    [Update Profile] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Update Profile] User enter the expire year 2030
    Then    [Update Profile] User enter the expire month "Dec"
    And     [Update Profile] User enter the expire day "31"
    Then    [Update Profile] User tap on browse file
    And     [Update Profile] User tap on the add more document
    Then    [Update Profile] User enter the document name "Establishment Card"
    Then    [Update Profile] User enter the second issue year 2017
    And     [Update Profile] User enter the second month "Dec"
    Then    [Update Profile] User enter the  second day "3"
    And     [Update Profile] User enter the second expire year 2030
    Then    [Update Profile] User enter the second expire month "Oct"
    And     [Update Profile] User enter the second expire day "31"
    Then    [Update Profile] User tap on second browse file
    And     [Update Profile] User enter the submit button
    Then    [Update Profile] user try to login and validate the document no  error "Please enter Document Title"

  Scenario: User Upload multiple document and validate error message on the issue date "Please enter issue date"
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "hikma"
    Then    [Sign Up] User enter the email "hikma"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    Then    [Update Profile] User enter the establishment id ""
    And     [Update Profile] User the address "asdfghjkl;1234567890"
    And     [Update Profile] Select the state "Dubai"
    When    [Update Profile] User enter the city "Dubai"
    Then    [Update Profile] User enter the document name "Trade License"
    And     [Update Profile] User enter the document tittle "personal details"
    Then    [Update Profile] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Update Profile] User enter the expire year 2030
    Then    [Update Profile] User enter the expire month "Oct"
    And     [Update Profile] User enter the expire day "31"
    Then    [Update Profile] User tap on browse file
    And     [Update Profile] User tap on the add more document
    Then    [Update Profile] User enter the document name "Establishment Card"
    Then    [Update Profile] User tap on second browse file
    And     [Update Profile] User enter the submit button
    Then    [Update Profile] User try to login and validate the issue date  error "Please enter issue date"

  Scenario: User successfully login
    Given   [Sign Up] User tap on Sign up button
    When    [Sign Up] User enter the name "kardiya01"
    Then    [Sign Up] User enter the email "kardiya"
    Then    [Sign Up] Enter the Phone code "92"
    Then    [Sign Up] User enter the phone no "3451234567"
    When    [Login Page] User enter the password "Password1"
    Then    [Sign Up] User enter the confirm password "Password1"
    And     [Sign Up] User tap on Sign up button on SignUp Page
    Then    [Sign Up] User enter the otp code "1111"
    And     [Sign Up] User tap on verify button
    And     [Login page] Verified user land on update profile page "Update Profile"
    Then    [Update Profile] User enter the establishment id ""
    And     [Update Profile] User the address "asdfghjkl;1234567890"
    And     [Update Profile] Select the state "Dubai"
    When    [Update Profile] User enter the city "Dubai"
    Then    [Update Profile] User enter the document name "Trade License"
    And     [Update Profile] User enter the document tittle "personal details"
    Then    [Update Profile] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Update Profile] User enter the expire year 2030
    Then    [Update Profile] User enter the expire month "Oct"
    And     [Update Profile] User enter the expire day "31"
    Then    [Update Profile] User tap on browse file
    #Then    [Update Profile] User upload the personal document
    And     [Update Profile] User enter the submit button


