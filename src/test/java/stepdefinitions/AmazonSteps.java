//package stepdefinitions;
//
//import io.cucumber.java.en.*;
//import org.openqa.selenium.WebDriver;
//import org.openqa.selenium.chrome.ChromeDriver;
//import io.github.bonigarcia.wdm.WebDriverManager;
//
//import static org.junit.Assert.*;
//
//public class AmazonSteps {
//
//    WebDriver driver;
//
//    @Given("I open the browser")
//    public void openBrowser() {
//        WebDriverManager.chromedriver().setup();
//        driver = new ChromeDriver();
//        driver.manage().window().maximize();
//    }
//
//    @When("I navigate to {string}")
//    public void navigateTo(String url) {
//        driver.get(url);
//    }
//
//    @Then("I should see Amazon homepage")
//    public void verifyAmazonHomepage() {
//        String title = driver.getTitle();
//        System.out.println("Page Title: " + title);
//        assertTrue(title.contains("Amazon"));
//        driver.quit();
//    }
//}

package stepdefinitions;

import io.cucumber.java.en.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;

import static org.junit.Assert.*;

public class AmazonSteps {

    WebDriver driver;

    // Open Browser
    @Given("I open the browser")
    public void openBrowser() {
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }

    // Navigate
    @When("I navigate to {string}")
    public void navigateTo(String url) {
        driver.get(url);
    }

    // Verify homepage
    @Then("I should see Amazon homepage")
    public void verifyHomepage() {
        String title = driver.getTitle();
        System.out.println("Title: " + title);
        assertTrue(title.contains("Amazon"));
        driver.quit();
    }

    // Verify title
    @Then("page title should contain {string}")
    public void verifyTitle(String expectedText) {
        String title = driver.getTitle();
        System.out.println("Title: " + title);
        assertTrue(title.contains(expectedText));
        driver.quit();
    }

    // Verify search box
    @Then("search box should be visible")
    public void verifySearchBox() {
        boolean isDisplayed = driver.findElement(By.id("twotabsearchtextbox")).isDisplayed();
        System.out.println("Search box visible: " + isDisplayed);
        assertTrue(isDisplayed);
        driver.quit();
    }

    // Search product
    @When("I search for {string}")
    public void searchProduct(String product) {
        driver.findElement(By.id("twotabsearchtextbox")).sendKeys(product);
        driver.findElement(By.id("nav-search-submit-button")).click();
    }

    // Verify results
    @Then("search results should be displayed")
    public void verifyResults() {
        boolean results = driver.findElements(By.cssSelector("div.s-main-slot")).size() > 0;
        System.out.println("Results found: " + results);
        assertTrue(results);
        driver.quit();
    }

    // Verify URL
    @Then("URL should contain {string}")
    public void verifyURL(String expected) {
        String url = driver.getCurrentUrl();
        System.out.println("Current URL: " + url);
        assertTrue(url.contains(expected));
        driver.quit();
    }
}