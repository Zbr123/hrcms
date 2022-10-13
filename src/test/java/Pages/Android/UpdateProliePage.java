package Pages.Android;

import Hooks.Base_Class;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;


public class UpdateProliePage {

    private WebDriver driver;
    public WebDriverWait wait = new WebDriverWait(driver, 30);

    //locator
    public static String establishmentId = "input[placeholder='Establishment ID']";
    public static String address = "input[placeholder='Address']";
    public static String estate_error = "//div[normalize-space()='Please enter state']";

    public static String state = "//span[@title='State *']";

    public static String stateName(String state) {
        return "div[title='" + state + "']";
    }

    public static String Document(String document) {
        return "//div[contains(text(),'" + document + "')]";
    }

    public static String personalDetail = "documentTitle0";
    public static String city = "city";

    //public static String dynamicissueDate(String date){return "td[title='"+date+"'] div[class='ant-picker-cell-inner']";}
    public static String expireDate = "expiryDate0";
    public static String browseFile = "#uploadExcel";
    public static String submitButton = "button[title='Submit']";
    public static String issueDate = "issueDate0";
    public static String estIdError = "//div[normalize-space()='Please enter establishment Id']";
    public static String addresserror = "//div[normalize-space()='Please enter address 1']";

    public static String clickYear_xpath = "(//button[normalize-space()='2022'])[1]";

    public static String year_arrow_xpath = "(//*[@class='ant-picker-header-super-prev-btn'])[1]";
    public static String expYearArrow = "(//button[@class='ant-picker-header-super-next-btn'])[2]";

    public static String month_select(String mon) {
        return "(//button[normalize-space()='" + mon + "'])[1]";
    }

    public static String secondmonth_select(String mon) {
        return "(//button[normalize-space()='" + mon + "'])";
    }

    public static String date_select(String date) {
        return "(//div[normalize-space()='" + date + "'])[1]";
    }

    public static String second_date_select(String date) {
        return "(//td[@class='ant-picker-cell ant-picker-cell-in-view']//div[@class='ant-picker-cell-inner'][normalize-space()='" + date + "'])[2]";
    }

    public static String expire_date_select(String date) {
        return "(//div[@class='ant-picker-cell-inner'][normalize-space()='" + date + "'])[2]";
    }

    public static String second_expire_date_select(String date) {
        return "(//div[@class='ant-picker-cell-inner'][normalize-space()='" + date + "'])[4]";
    }


    public static String user_month(String mon) {
        return "//div[normalize-space()='" + mon + "']";
    }

    public static String user_secondmonth(String mon) {
        return "(//button[normalize-space()='" + mon + "'])[1]";
    }

    public static String cityError = "//div[normalize-space()='Please enter city']";
    public static String document_no_Error = "//div[normalize-space()='Please enter Document Title']";
    public static String document_Name_Error = "//div[normalize-space()='Please enter name']";
    public static String issue_Date_Error = "//div[normalize-space()='Please enter issue date']";
    public static String expire_Date_Error = "//div[normalize-space()='Please enter expiry date']";
    public static String add_More_Document = "button[title='Add More Documents']";
    public static String second_Document = "documentNo1";
    public static String second_Name_document = "documentTitle1";
    public static String second_Issue_Date = "issueDate1";
    public static String second_Issue_arrow = "(//span[@class='ant-picker-super-prev-icon'])[3]";
    public static String Second_Expire_Year = "expiryDate1";
    public static String Second_Exp_Year_Arrow = "(//button[@class='ant-picker-header-super-next-btn'])[4]";
    public static String Second_Brows_Button = "(//*[@id=\"uploadExcel\"])[2]";
    public static String year_arrow_doj_xpath = "(//*[@class='ant-picker-header-super-prev-btn'])[2]";
    public static String document = "documentTitle0";


    public UpdateProliePage() {
    }

    //return function

    public static WebElement getEstablishmentId() {
        return Base_Class.driver.findElement(By.cssSelector(establishmentId));
    }

    public static WebElement getAddress() {

        return Base_Class.driver.findElement(By.cssSelector(address));
    }

    public static WebElement getState() {
        return (WebElement) Base_Class.driver.findElement(By.xpath(state));
    }

    public static WebElement getStateName(String state) {
        return Base_Class.driver.findElement(By.cssSelector(stateName(state)));
    }

    public static WebElement getDocumentName(String document) {
        return Base_Class.driver.findElement(By.xpath(Document(document)));
    }

    public static WebElement getPersonalDetail() {
        return Base_Class.driver.findElement(By.id(personalDetail));
    }

    public static WebElement getcity() {
        return Base_Class.driver.findElement(By.id(city));
    }

    public static WebElement getExpireDate() {
        return Base_Class.driver.findElement(By.name(expireDate));
    }

    public static WebElement getBrowseFile() {
        return Base_Class.driver.findElement(By.cssSelector(browseFile));
    }

    public static WebElement getSubmitButton() {
        return Base_Class.driver.findElement(By.cssSelector(submitButton));
    }

    /*
        public static WebElement getdynamicissueDate(String date){
            return Base_Class.driver.findElement(By.cssSelector(dynamicissueDate(date)));}
    */
    public static WebElement getIssueDate() {
        return Base_Class.driver.findElement(By.id(issueDate));
    }

    public static WebElement getEstablishmentIdError() {
        return Base_Class.driver.findElement(By.xpath(estIdError));
    }

    public static WebElement getAddressError() {
        return Base_Class.driver.findElement(By.xpath(addresserror));
    }

    public static WebElement get_clickYear_xpath() {
        return Base_Class.driver.findElement(By.xpath(clickYear_xpath));
    }

    public static WebElement get_year_arrow_xpath() {
        return Base_Class.driver.findElement(By.xpath(year_arrow_xpath));
    }

    public static WebElement get_month_select(String mont) {
        return Base_Class.driver.findElement(By.xpath(month_select(mont)));
    }

    public static WebElement get_user_month(String month) {
        return Base_Class.driver.findElement(By.xpath(user_month(month)));
    }

    public static WebElement get_date_select(String date) {
        return Base_Class.driver.findElement(By.xpath(date_select(date)));
    }

    public static WebElement get_second_date_select(String secondissuedate) {
        return Base_Class.driver.findElement(By.xpath(second_date_select(secondissuedate)));
    }

    public static WebElement getExpYearArrow() {
        return Base_Class.driver.findElement(By.xpath(expYearArrow));
    }

    public static WebElement get_Expire_Date_Select(String date) {
        return Base_Class.driver.findElement(By.xpath(expire_date_select(date)));
    }

    public static WebElement get_State_Error() {
        return Base_Class.driver.findElement(By.xpath(estate_error));
    }

    public static WebElement get_City_Error() {
        return Base_Class.driver.findElement(By.xpath(cityError));
    }

    public static WebElement get_Document_No_Error() {
        return Base_Class.driver.findElement(By.xpath(document_no_Error));
    }

    public static WebElement get_Document_Name_Error() {
        return Base_Class.driver.findElement(By.xpath(document_Name_Error));
    }

    public static WebElement get_Issue_Date_Error() {
        return Base_Class.driver.findElement(By.xpath(issue_Date_Error));
    }

    public static WebElement get_expire_Date_Error() {
        return Base_Class.driver.findElement(By.xpath(expire_Date_Error));
    }

    public static WebElement get_Add_More_Document() {
        return Base_Class.driver.findElement(By.cssSelector(add_More_Document));
    }

    public static WebElement get_Second_Document() {
        return Base_Class.driver.findElement(By.name(second_Document));
    }

    public static WebElement get_second_Documment_Name() {
        return Base_Class.driver.findElement(By.name(second_Name_document));
    }

    public static WebElement get_Second_Issue_Date() {
        return Base_Class.driver.findElement(By.name(second_Issue_Date));
    }

    public static WebElement get_Second_Issue_arrow_xpath() {
        return Base_Class.driver.findElement(By.xpath(second_Issue_arrow));
    }

    public static WebElement get_Second_Expire_Year() {
        return Base_Class.driver.findElement(By.id(Second_Expire_Year));
    }

    public static WebElement get_Second_Exp_Year_Arrow() {
        return Base_Class.driver.findElement(By.xpath(Second_Exp_Year_Arrow));
    }

    public static WebElement get_Second_Expire_Date_Select(String date) {
        return Base_Class.driver.findElement(By.xpath(second_expire_date_select(date)));
    }

    public static WebElement get_Second_Brows_Button() {
        return Base_Class.driver.findElement(By.xpath(Second_Brows_Button));
    }

    public static WebElement get_year_arrow_doj_xpath() {
        return Base_Class.driver.findElement(By.xpath(year_arrow_doj_xpath));
    }

    public static WebElement getDocument() {
        return Base_Class.driver.findElement(By.name(document));
    }

    public static WebElement get_secondmonth_select(String mont) {
        return Base_Class.driver.findElement(By.xpath(secondmonth_select(mont)));
    }

    public static WebElement get_user_secondmonth(String month) {
        return Base_Class.driver.findElement(By.xpath(user_secondmonth(month)));
    }
}
