import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.junit.Assert;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class AmazonSteps {

    WebDriver driver;

    // Step 1: Open browser
    @Given("I open the browser")
    public void i_open_the_browser() {
        driver = new ChromeDriver();   // Chrome browser open
        driver.manage().window().maximize(); // maximize window
    }

    // Step 2: Navigate to URL
    @When("I navigate to {string}")
    public void i_navigate_to_url(String url) {
        driver.get(url);   // open given URL
    }

    // Step 3: Verify homepage
    @Then("I should see Amazon homepage")
    public void i_should_see_amazon_homepage() {
        String title = driver.getTitle();   // get page title
        System.out.println("Page Title: " + title);

        // Check title contains "Amazon"
        Assert.assertTrue(title.contains("Amazon"));

        driver.quit(); // close browser
    }
}