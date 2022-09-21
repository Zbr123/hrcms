package Pages.Android;

import Hooks.Base_Class;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;

import static Pages.Android.UpdateProliePage.*;
import static Pages.Android.UpdateProliePage.document;


public class AddEmployerPages {

    private WebDriver driver;
    public WebDriverWait wait = new WebDriverWait(driver, 30);


    //locator
    public static String Add_New_Emplyer = "button[title='Add Employee'] span:nth-child(1)";
    public static String First_Name = "//input[@placeholder='First Name']";
    public static String Middle_Name = "//input[@placeholder='Middle Name']";
    public static String Last_Name = "//input[@placeholder='Last Name *']";
    public static String Display_Name = "//input[@placeholder='Display Name']";
    public static String Gender_Field = "span[title='Gender']";

    public static String get_date(String date) {
        return "(//div[@class='ant-picker-cell-inner'][normalize-space()='" + date + "'])[3]";
    }

    public static String Mobile_No = "mobileNo";
    public static String Alternate_Mobile_no = "altMobileNo";
    public static String Add_Employer_Button = "button[title='Add Employee']";


    public static String Gender(String gender) {
        return "//div[contains(text(),'" + gender + "')]";
    }

    public static String Date_Of_Birth = "dob";
    public static String Pass_Port_no = "passportNumber";

    public static String Country(String country) {
        return "//div[contains(text(),'" + country + "')]";
    }

    public static String Nationality = "nationality";
    public static String Mol_No = "molNo";
    public static String Emp_Code = "empCode";
    public static String Date_Of_Joining = "doj";
    public static String first_Name_Error = ".error";
    public static String year_arrow_xpath = "(//*[@class='ant-picker-header-super-prev-btn'])[3]";


    public static WebElement get_Add_New_Emplyer() {
        return Base_Class.driver.findElement(By.cssSelector(Add_New_Emplyer));
    }

    public static WebElement get_First_name() {
        return Base_Class.driver.findElement(By.xpath(First_Name));
    }

    public static WebElement get_Middle_name() {
        return Base_Class.driver.findElement(By.xpath(Middle_Name));
    }

    public static WebElement get_Last_Name() {
        return Base_Class.driver.findElement(By.xpath(Last_Name));
    }

    public static WebElement get_Display_Name() {
        return Base_Class.driver.findElement(By.xpath(Display_Name));
    }

    public static WebElement get_Gender_Field() {
        return Base_Class.driver.findElement(By.cssSelector(Gender_Field));
    }

    public static WebElement get_Gender(String gender) {
        return Base_Class.driver.findElement(By.xpath(Gender(gender)));
    }

    public static WebElement get_Date_Of_Birth() {
        return Base_Class.driver.findElement(By.id(Date_Of_Birth));
    }

    public static WebElement get_Pass_Port_no() {
        return Base_Class.driver.findElement(By.id(Pass_Port_no));
    }

    public static String date_select(String date) {
        return "(//div[@class='ant-picker-cell-inner'][normalize-space()='" + date + "'])[3]";
    }

    public static String expYearArrow = "(//button[@class='ant-picker-header-super-next-btn'])[4]";

    public static String expire_date_select(String date) {
        return "(//div[@class='ant-picker-cell-inner'][normalize-space()='" + date + "'])[4]";
    }
    public static String Error_Xpath(String error){
        return "//div[normalize-space()='"+error+"']";
    }
    public static String Document(String document){
        return "div[title='"+document+"']";
    }
    public static String Document_Name = "documentTitle0";

    public static WebElement get_Country(String country) {
        return Base_Class.driver.findElement(By.xpath(Country(country)));
    }

    public static WebElement get_Nationality() {
        return Base_Class.driver.findElement(By.name(Nationality));
    }

    public static WebElement get_Mol_No() {
        return Base_Class.driver.findElement(By.id(Mol_No));
    }

    public static WebElement get_Emp_Code() {
        return Base_Class.driver.findElement(By.id(Emp_Code));
    }

    public static WebElement get_Date_Of_Joining() {
        return Base_Class.driver.findElement(By.id(Date_Of_Joining));
    }

    public static WebElement get_date_of_joining_select(String date) {
        return Base_Class.driver.findElement(By.xpath(get_date(date)));
    }

    public static WebElement get_Mobile_No() {
        return Base_Class.driver.findElement(By.id(Mobile_No));
    }

    public static WebElement get_Alternate_Mobile_No() {
        return Base_Class.driver.findElement(By.id(Alternate_Mobile_no));
    }

    public static WebElement get_Add_Emplyer_Button() {
        return Base_Class.driver.findElement(By.cssSelector(Add_Employer_Button));
    }

    /*  public static WebElement get_Employee_Already_Exsist(){
          return Base_Class.driver.findElement(By.cssSelector());
      */
    public static WebElement get_first_Name_Error() {
        return Base_Class.driver.findElement(By.cssSelector(first_Name_Error));
    }

    public static WebElement get_add_employer_year_arrow_xpath() {
        return Base_Class.driver.findElement(By.xpath(year_arrow_xpath));
    }

    public static WebElement get_issue_Add_Employer_date_select(String date) {
        return Base_Class.driver.findElement(By.xpath(date_select(date)));
    }

    public static WebElement getAddEmployerExpYearArrow() {
        return Base_Class.driver.findElement(By.xpath(expYearArrow));
    }

    public static WebElement get_Add_Employer_Expire_Date_Select(String date) {
        return Base_Class.driver.findElement(By.xpath(expire_date_select(date)));
    }
    public static WebElement getError(String error){
        return Base_Class.driver.findElement(By.xpath(Error_Xpath(error)));
    }
    public static WebElement get_Document(String document){
        return Base_Class.driver.findElement(By.cssSelector(Document(document)));
    }
    public static WebElement get_Document_Feild(){
        return Base_Class.driver.findElement(By.name(Document_Name));
    }
}