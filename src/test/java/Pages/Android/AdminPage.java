package Pages.Android;

import Hooks.Base_Class;
import org.openqa.selenium.By;
import org.openqa.selenium.SearchContext;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;


public class AdminPage {

    private WebDriver driver;
    public WebDriverWait wait = new WebDriverWait(driver, 30);

    //locator
    public static String admin_Tab = "//div[@class='body-container scroll-y']";
    public static String Login = "button[title='Login']";

    public static WebElement get_Admin_Tab(){
        return Base_Class.driver.findElement(By.xpath(admin_Tab));
    }
    public static WebElement get_Login() {
        return Base_Class.driver.findElement(By.cssSelector(Login));
    }
}
