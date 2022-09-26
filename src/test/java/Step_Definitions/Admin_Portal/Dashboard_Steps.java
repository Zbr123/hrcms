package Step_Definitions.Admin_Portal;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import static Hooks.Base_Class.driver;
import static Pages.Android.Admin_Portal.DashboardPage.*;

public class Dashboard_Steps {

    public WebDriverWait wait = new WebDriverWait(driver, 30);

    @Then("[Dashboard Page Admin Portal] User should see the dashboard with heading {string}")
    public void dashboardPageAdminPortalUserShouldSeeTheDashboardWithHeading(String expected) {
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(dashboard_heading_xpath)));
        String actual = get_dashboard_heading_xpath().getText();
        Assert.assertEquals(expected, actual);
    }

    @Given("[Dashboard Page Admin Portal] User navigates to the admin portal")
    public void dashboardPageAdminPortalUserNavigatesToTheAdminPortal() {
        driver.navigate().to("http://10.40.5.62:65002/");
    }

    @When("[Dashboard Page Admin Portal] User enters a valid email address")
    public void dashboardPageAdminPortalUserEntersAValidEmailAddress() {
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id(email_field_id)));
        get_email_field_id().click();
        //get_email_field_id().clear();
        //get_email_field_id().sendKeys("admin@admin.com");
    }

    @And("[Dashboard Page Admin Portal] User enters a valid password")
    public void dashboardPageAdminPortalUserEntersAValidPassword() {
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.id(password_field_id)));
        get_password_field_id().click();
        //get_password_field_id().clear();
        //get_password_field_id().sendKeys("12345678");
    }

    @And("[Dashboard Page Admin Portal] User clicks on the login button")
    public void dashboardPageAdminPortalUserClicksOnTheLoginButton() {
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(login_button_xpath)));
        get_login_button_xpath().click();
    }
}
