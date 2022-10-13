package Pages.Android.Admin_Portal;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import static Hooks.Base_Class.driver;

public class DashboardPage {

    public static String dashboard_heading_xpath = "//h1[normalize-space()='Hi Administrator!']";
    public static String email_field_id = "email";
    public static String password_field_id = "password";
    public static String login_button_xpath = "//button[@title='Login']";

    public static String admin_tab_sidebar_xpath = "//*[@class=\"side-menu-list-item\"]//*[@href=\"/admin\"]";

    public DashboardPage() {}
    public static WebElement get_dashboard_heading_xpath(){return driver.findElement(By.xpath(dashboard_heading_xpath));}
    public static WebElement get_email_field_id(){return driver.findElement(By.id(email_field_id));}
    public static WebElement get_password_field_id(){return driver.findElement(By.id(password_field_id));}

    public static WebElement get_login_button_xpath(){return driver.findElement(By.xpath(login_button_xpath));}

    public static WebElement get_admin_tab_sidebar_xpath(){return driver.findElement(By.xpath(admin_tab_sidebar_xpath));}
}
