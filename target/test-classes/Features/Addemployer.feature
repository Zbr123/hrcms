@AddEmployer
Feature: AddEmployer

  @Update @UpdateProfile1
  Scenario: Add new employer
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
   # Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    And     [Add Employer  User Select the Bank "Kamel Pay"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer

  Scenario: Add new employer with other bank
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    #Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Pakistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] User enter the Emirates id ""
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    And     [Add Employer  User Select the Bank "Other Bank"
    Then    [Add Employer] User Select the bask "Ajman Bank"
    And     [Add Employer] User enter the branch name "Dubai"
    Then    [Add Employer] User enter the iBAN no "CY17002001280000001200527600"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] Validate employees should add successfully "New employee added successfully, Please wait for approval"

  Scenario: Add new employer with other bank ""Arab African International Bank""
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    #Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Pakistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] User enter the Emirates id ""
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    And     [Add Employer  User Select the Bank "Other Bank"
    Then    [Add Employer] User Select the bask "Arab African International Bank"
    And     [Add Employer] User enter the branch name "Dubai"
    Then    [Add Employer] User enter the iBAN no "CY17002001280000001200527600"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] Validate employees should add successfully "New employee added successfully, Please wait for approval"

  Scenario: User validate the error message on Mol no  "Please enter Mol Number"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] User validate the error message "Please enter Mol Number"

  Scenario: User validate the error message on first name "Please enter First Name"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on first name "Please enter First Name"


  Scenario: User validate the error message on first name "Please enter Last Name"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on last name "Please enter Last Name"

  Scenario: User validate the error message on display name "Please enter Display Name"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on display name "Please enter Display Name"

  Scenario: User validate the error message on display name "Please enter Gender"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on gender "Please enter Gender"

  Scenario: User validate the error message on date of birth "Please enter Date Of Birth"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on date of birth "Please enter Date Of Birth"

  Scenario: User validate the error message on passport no "Please enter Passport Number"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on passport no "Please enter Passport Number"

  Scenario: user validate the error message on nationality "Please enter Nationality"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on nationality "Please enter Nationality"

  Scenario:  user validate the error message on Mol no "Please enter Mol Number"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on Mol No "Please enter Mol Number"


  Scenario: user validate the error message on employee No "Please enter Employee Code"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on employee No "Please enter Employee Code"

  Scenario: user validate the error message on employee No "Please enter Date of joining"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Afghanistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    #Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] user validate the error message on date of joining  "Please enter Date of joining"

  Scenario: Add new employer with other bank validation "Mol No"
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "K"
    And     [Add Employer] user enter the middle name "L"
    Then    [Add Employer] user enter the last name "KM"
    And     [Add Employer] user enter the display name "KM"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Female"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    #Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Korea, Republic of"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2011
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] User enter the Emirates id ""
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    And     [Add Employer  User Select the Bank "Other Bank"
    Then    [Add Employer] User Select the bask "Arab African International Bank"
    And     [Add Employer] User enter the branch name "Dubai"
    Then    [Add Employer] User enter the iBAN no "CY17002001280000001200527600"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] Validate employees should add successfully "New employee added successfully, Please wait for approval"
    Then    [Add Employer] User tap on eye button
    Then    [Add Employer] Validate the Mol no ""
    Then    [Add Employer] check

  Scenario: Add new employer with other bank validation ""Arab African International Bank""
    Given   [Login Page] User enter the email "ali@mailinator.com"
    When    [Login Page] User enter the password "Password1"
    Then    [Login page] User tap on login button
    Then    [Employees Page] User tap on employees button
    Given   [Add Employer] user tap on new employer button
    Then    [Add Employer] user enter the first name "ali"
    And     [Add Employer] user enter the middle name "raza"
    Then    [Add Employer] user enter the last name "hussain"
    And     [Add Employer] user enter the display name "ali raza hussain"
    Then    [Add Employer] user tap on gender field
    And     [Add Employer] user select the gender "Male"
    Then    [Add Employer] User enter the year 2017
    And     [Update Profile] User enter the month "Dec"
    Then    [Update Profile] User enter the day "3"
    And     [Add Employer] user enter the passport no ""
    #Then    [Add Employer] user tao the nationality
    Then    [Add Employer] user select the nationality "Pakistan"
    And     [Add Employer] user enter the Mol no ""
    Then    [Add Employer] user enter the Employer code "12345"
    And     [Add Employer] user enter the date of joining year 2017
    And     [Update Profile] User enter the month of joining  "Jan"
    Then    [Add Employer]  User enter the day "10"
    And     [Add Employer] User enter the Emirates id ""
    And     [Add Employer] user enter mobile no "92123456789"
    Then    [Add Employer] user enter  alternate mobile no "921234567890"
    And     [Add Employer  User Select the Bank "Other Bank"
    Then    [Add Employer] User Select the bask "Arab African International Bank"
    And     [Add Employer] User enter the branch name "Dubai"
    Then    [Add Employer] User enter the iBAN no "CY17002001280000001200527600"
    Then    [Add Employer] User select the document "Labour Card"
    Then    [Add Employer] User enter issue year 2017
    And     [Update Profile] User enter the month "Jan"
    Then    [Update Profile] User enter issue add employer the day "22"
    And     [Update Profile] User enter the add employer expire year 2030
    Then    [Update Profile] User enter the expire month "Jan"
    And     [Update Profile] User enter the add employer expire day "20"
    Then    [Update Profile] User tap on browse file
    And     [Add Employer] user tap on the add employer
    Then    [Add Employer] Validate employees should add successfully "New employee added successfully, Please wait for approval"
    Then    [Add Employer] User tap on eye button
    Then    [Add Employer] Validate the bank "Arab African International Bank"



















