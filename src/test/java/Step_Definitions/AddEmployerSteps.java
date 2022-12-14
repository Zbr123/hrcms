package Step_Definitions;

import Hooks.Base_Class;
import Pages.Android.AddEmployerPages;
import Pages.Android.AdminPage;
import Pages.Android.UpdateProliePage;
import Tests.Scroll;
import com.github.dockerjava.core.dockerfile.DockerfileStatement;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java8.Th;
import net.bytebuddy.pool.TypePool;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.asserts.SoftAssert;

import java.awt.*;
import java.awt.event.KeyEvent;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.SQLOutput;
import java.util.ArrayList;

import static Hooks.Base_Class.driver;
import static Pages.Android.AddEmployerPages.*;
import static Pages.Android.AdminPage.admin_Tab;
import static Pages.Android.UpdateProliePage.*;
import static Tests.Current_Date.currentYear;

public class AddEmployerSteps<Save_mol> {

    public WebDriverWait wait = new WebDriverWait(driver, 30);
    //create a soft-assertion object
    SoftAssert softAssert = new SoftAssert();

    @Given("[Add Employer] user tap on new employer button")
    public void addEmployerUserTapOnNewEmployerButton() throws InterruptedException {
        AddEmployerPages.get_Add_New_Emplyer().click();
    }


    @Then("[Add Employer] user enter the first name {string}")
    public void addEmployerUserEnterTheFirstName(String firstname) {
        AddEmployerPages.get_First_name().sendKeys(firstname);
    }

    @And("[Add Employer] user enter the middle name {string}")
    public void addEmployerUserEnterTheMiddleName(String middlename) {
        AddEmployerPages.get_Middle_name().sendKeys(middlename);
    }

    @Then("[Add Employer] user enter the last name {string}")
    public void addEmployerUserEnterTheLastName(String lastname) {
        AddEmployerPages.get_Last_Name().sendKeys(lastname);
    }

    @And("[Add Employer] user enter the display name {string}")
    public void addEmployerUserEnterTheDisplayName(String displayname) {
        AddEmployerPages.get_Display_Name().sendKeys(displayname);
    }

    @Then("[Add Employer] user tap on gender field")
    public void addEmployerUserTapOnGenderField() {
        AddEmployerPages.get_Gender_Field().click();
    }

    @And("[Add Employer] user select the gender {string}")
    public void addEmployerUserSelectTheGender(String male) throws InterruptedException {
        AddEmployerPages.get_Gender(male).click();

    }

    @Then("[Add Employer] User enter the year {int}")
    public void addEmployerUserEnterTheYear(int isyear) throws InterruptedException {
        AddEmployerPages.get_Date_Of_Birth().click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(clickYear_xpath)));
        String year = currentYear();
        int year1 = Integer.parseInt(year);
        year1 = year1 - isyear;

        for (int i = 0; i < year1; i++) {
            get_year_arrow_xpath().click();

        }
    }

    @And("[Add Employer] user enter the passport no {string}")
    public void addEmployerUserEnterThePassportNo(String passportno) throws InterruptedException {
        long first16 = (long) (Math.random() * 10000000000000000L);
        AddEmployerPages.get_Pass_Port_no().sendKeys(passportno+first16);

    }

    @Then("[Add Employer] user select the nationality {string}")
    public void addEmployerUserSelectTheNationality(String country) throws InterruptedException {
//        AddEmployerPages.get_Select_Country().click();
//        Thread.sleep(5000);
        AddEmployerPages.get_Nationality().sendKeys(country);
        if(get_Nationality().isDisplayed()){
            AddEmployerPages.get_Nationality().click();
            AddEmployerPages.get_Nationality().sendKeys(Keys.ENTER);

        }
        else {
            AddEmployerPages.get_Nationality().sendKeys(country);
            AddEmployerPages.get_Nationality().sendKeys(Keys.ENTER);
        }

    }

    @Then("[Add Employer] user tao the nationality")
    public void addEmployerUserTaoTheNationality() throws InterruptedException {
//        AddEmployerPages.get_Nationality().click();
        AddEmployerPages.get_Nationality().sendKeys("Pakistan");
        AddEmployerPages.get_Nationality().sendKeys(Keys.ENTER);

        //Scroll.ScrollVertical(driver.findElement(By.xpath("//div[contains(text(),'Pakistan')]")));
       // Scroll.ScrollVertical(driver.findElement(By.xpath("//div[@class='rc-virtual-list-scrollbar rc-virtual-list-scrollbar-show']//div[@class='rc-virtual-list-scrollbar-thumb']")));
    }

    long first14 = (long) (Math.random() * 100000000000000L);
    long Save_mol = first14;

    @And("[Add Employer] user enter the Mol no {string}")
    public void addEmployerUserEnterTheMolNo(String Molno) throws InterruptedException {
      //  AddEmployerPages.get_Mol_No().sendKeys((Math.random()+Molno);

        AddEmployerPages.get_Mol_No().sendKeys(first14 +Molno);
        System.out.println("MOL NO WHICH IS SAving.....: " +Save_mol);
    }


    @Then("[Add Employer] user enter the Employer code {string}")
    public void addEmployerUserEnterTheEmployerCode(String empcode) {
        AddEmployerPages.get_Emp_Code().sendKeys(empcode);
    }

    @And("[Add Employer] user enter the date of joining year {string}")
    public void addEmployerUserEnterTheDateOfJoiningYear(String isyear) {

    }

    @And("[Add Employer] user enter the date of joining year {int}")
    public void addEmployerUserEnterTheDateOfJoiningYear(int isyear) throws InterruptedException {
        AddEmployerPages.get_Date_Of_Joining().click();

        //wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(clickYear_xpath)));
        String year = currentYear();
        int year1 = Integer.parseInt(year);
        year1 = year1 - isyear;

        for(int i=0; i<year1; i++) {
            UpdateProliePage.get_year_arrow_doj_xpath().click();

        }
    }

    @Then("[Add Employer]  User enter the day {string}")
    public void addEmployerUserEnterTheDay(String isDay) throws InterruptedException {
        //wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(date_select(isDay))));
        AddEmployerPages.get_date_of_joining_select(isDay).click();
    }

    @And("[Add Employer] user enter mobile no {string}")
    public void addEmployerUserEnterMobileNo(String mobno) {
        AddEmployerPages.get_Mobile_No().sendKeys(mobno);
    }

    @Then("[Add Employer] user enter  alternate mobile no {string}")
    public void addEmployerUserEnterAlternateMobileNo(String altermobno) throws InterruptedException {
        AddEmployerPages.get_Alternate_Mobile_No().sendKeys(altermobno);
    }

    @And("[Add Employer] user tap on the add employer")
    public void addEmployerUserTapOnTheAddEmployer() throws InterruptedException {
        AddEmployerPages.get_Add_Emplyer_Button().click();
        Thread.sleep(3000);


    }
/*
    @Then("[Add Employer] user validate the error message {string}")
    public void addEmployerUserValidateTheErrorMessage(String useralreadyexist) {
        AddEmployerPages.get_Employee_Already_Exsist().isDisplayed();
        Assert.assertEquals(useralreadyexist,"Employee with same MOL number is already exists");
    }
*/
    @Then("[Add Employer] user validate the error message on first name {string}")
    public void addEmployerUserValidateTheErrorMessageOnFirstName(String fisrtnameerror) throws InterruptedException {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(fisrtnameerror,"Please enter First Name");
        Thread.sleep(3000);

    }

    @Then("[Add Employer] user validate the error message on last name {string}")
    public void addEmployerUserValidateTheErrorMessageOnLastName(String lastnameerror) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(lastnameerror,"Please enter Last Name");
    }

    @Then("[Add Employer] user validate the error message on display name {string}")
    public void addEmployerUserValidateTheErrorMessageOnDisplayName(String displaynameerror) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(displaynameerror,"Please enter Display Name");
    }

    @Then("[Add Employer] user validate the error message on gender {string}")
    public void addEmployerUserValidateTheErrorMessageOnGender(String gendererror) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(gendererror,"Please enter Gender");

    }

    @Then("[Add Employer] user validate the error message on date of birth {string}")
    public void addEmployerUserValidateTheErrorMessageOnDateOfBirth(String dateofbirth) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(dateofbirth,"Please enter Date Of Birth");

    }

    @Then("[Add Employer] user validate the error message on passport no {string}")
    public void addEmployerUserValidateTheErrorMessageOnPassportNo(String passporterror) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(passporterror,"Please enter Passport Number");
    }

    @Then("[Add Employer] user validate the error message on nationality {string}")
    public void addEmployerUserValidateTheErrorMessageOnNationality(String erroronnationality) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(erroronnationality,"Please enter Nationality");
    }

    @Then("[Add Employer] user validate the error message on Mol No {string}")
    public void addEmployerUserValidateTheErrorMessageOnMolNo(String molerror) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(molerror,"Please enter Mol Number");
    }

    @Then("[Add Employer] user validate the error message on employee No {string}")
    public void addEmployerUserValidateTheErrorMessageOnEmployeeNo(String employeecodeerror) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(employeecodeerror,"Please enter Employee Code");
    }

    @Then("[Add Employer] user validate the error message on date of joining  {string}")
    public void addEmployerUserValidateTheErrorMessageOnDateOfJoining(String errordateofjoining) {
        AddEmployerPages.get_first_Name_Error().isDisplayed();
        Assert.assertEquals(errordateofjoining,"Please enter Date of joining");
    }

    @Then("[Add Employer] User enter issue year {int}")
    public void addEmployerUserEnterIssueYear(int isYear) {
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id(issueDate)));
        UpdateProliePage.getIssueDate().click();

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(clickYear_xpath)));
        String year = currentYear();
        int year1 = Integer.parseInt(year);
        year1 = year1 - isYear;

        for(int i=0; i<year1; i++) {
            AddEmployerPages.get_add_employer_year_arrow_xpath().click();

        }

        }


    @Then("[Update Profile] User enter issue add employer the day {string}")
    public void updateProfileUserEnterIssueAddEmployerTheDay(String isDay) throws InterruptedException {
       // wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(date_select(isDay))));

        AddEmployerPages.get_issue_Add_Employer_date_select(isDay).click();
    }


    @And("[Update Profile] User enter the add employer expire year {int}")
    public void updateProfileUserEnterTheAddEmployerExpireYear(int expyear) {
        UpdateProliePage.getExpireDate().click();
        String year = currentYear();
        int year1 = Integer.parseInt(year);
        year1 = expyear - year1;

        for(int i=0; i<year1; i++) {
            AddEmployerPages.getAddEmployerExpYearArrow().click();


        }


    }

    @And("[Update Profile] User enter the add employer expire day {string}")
    public void updateProfileUserEnterTheAddEmployerExpireDay(String expDay) {
        AddEmployerPages.get_Add_Employer_Expire_Date_Select(expDay).click();
    }

    @Then("[Add Employer] User validate the error message {string}")
    public void addEmployerUserValidateTheErrorMessage(String error) throws InterruptedException {
        AddEmployerPages.getError(error).isDisplayed();
        Assert.assertEquals(error,"Please enter Mol Number");


    }

    @Then("[Add Employer] User select the document {string}")
    public void addEmployerUserSelectTheDocument(String document) {
        AddEmployerPages.get_Document_Feild().click();
        AddEmployerPages.get_Document(document).click();
    }

    @And("[Add Employer  User Select the Bank {string}")
    public void addEmployerUserSelectTheBank(String bank) {
        AddEmployerPages.get_BankDetails().click();
        AddEmployerPages.get_Select_Bank(bank).click();
    }

    @Then("[Add Employer] User Select the bask {string}")
    public void addEmployerUserSelectTheBask(String bank) {
        AddEmployerPages.get_Bank().sendKeys(bank);
//        AddEmployerPages.get_Select_Bank(bank).sendKeys(bank);
        AddEmployerPages.get_Bank().sendKeys(Keys.ENTER);
    }

    @And("[Add Employer] User enter the branch name {string}")
    public void addEmployerUserEnterTheBranchName(String BranchName) {
        AddEmployerPages.get_Branch_Name().sendKeys(BranchName);
    }

    @Then("[Add Employer] User enter the iBAN no {string}")
    public void addEmployerUserEnterTheIBANNo(String Iban) {
        AddEmployerPages.get_Iban().sendKeys(Iban);
    }

    @Then("[Add Employer] Validate employees should add successfully {string}")
    public void addEmployerValidateEmployeesShouldAddSuccessfully(String expected) throws InterruptedException {
        String actual = AddEmployerPages.get_Add_Employee_Successfully().getText();
        Assert.assertEquals(expected,actual);
        driver.navigate().back();
        Thread.sleep(10000);
//        AddEmployerPages.get_Add_New_Emplyer().sendKeys(Keys.);

    }

    @And("[Add Employer] User enter the Emirates id {string}")
    public void addEmployerUserEnterTheEmiratesId(String eid) {
        long first14 = (long) (Math.random() * 10000000000000L);
        AddEmployerPages.get_Eid_No().sendKeys(first14+eid);
    }

    @Then("[Add Employer] User tap on eye button")
    public void addEmployerUserTapOnEyeButton() {
        AddEmployerPages.get_Eye().click();
    }


    @Then("[Add Employer] Validate the Mol no {string}")
    public void addEmployerValidateTheMolNo(String val) throws InterruptedException {
        Thread.sleep(5000);
        String actual = AddEmployerPages.get_Validate(String.valueOf(first14)).getText();
        System.out.println("actual mol:" +actual);
        System.out.println("exp:"+first14);
        Assert.assertEquals(String.valueOf(first14),actual);

        System.out.println("print value" +actual);

    }

    @Then("[Add Employer] Validate the bank {string}")
    public void addEmployerValidateTheBank(String bank) {
       String actual = AddEmployerPages.get_Valid_Bank(bank).getText();
        Assert.assertEquals(bank,actual);
        System.out.println(actual);
    }

    @Then("[Add Employer] check")
    public void addEmployerCheck() throws InterruptedException {
        Thread.sleep(5000);
        String actual =AddEmployerPages.get_Check().getText();
        Assert.assertEquals(String.valueOf(first14),actual);
    }
}

