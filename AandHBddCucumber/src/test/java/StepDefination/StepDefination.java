package StepDefination;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Properties;

import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDefination {

	WebDriver driver;
	Properties xpath;
	Properties data;
	WebElement element;
	String url;

	@Given("User navigates to {string} url")
	public void navigate(String url) {
		xpath = new Properties();
		FileReader i = null; // Why we define i value to null ?
		try {
			i = new FileReader("xpath.properties");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		try {
			xpath.load(i);
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		data = new Properties();
		i = null;
		try {
			i = new FileReader("data.properties");
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		try {
			data.load(i);
		} catch (IOException e1) {
			e1.printStackTrace();
		}

		System.setProperty("webdriver.chrome.driver", data.getProperty("ChromeDriverPath"));
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get(data.getProperty(url));
	}

	@When("User Select {string} Radio button")
	public void SelectReadioButton(String linkName) {
		
		WebDriverWait RadioButtonWait = new WebDriverWait(driver,20);
		element =RadioButtonWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath.getProperty(linkName))));
		element.click();
	}

	@When("User Select {string} Drop-Down field with the value as {string}")
	public void SelectDOBdropDown(String linkName, String Value) {
		Select DOBYear = new Select(driver.findElement(By.xpath(xpath.getProperty(linkName))));
		DOBYear.selectByVisibleText(Value);
	}

	@When("User Click on {string} button")
	public void ContinueButtonClick(String linkName) {
		WebDriverWait wait = new WebDriverWait(driver,20);
		WebElement buttonClick;
		buttonClick = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath.getProperty(linkName))));
		buttonClick.click();
		//driver.findElement(By.xpath(xpath.getProperty(linkName))).click();
	}

	@When("User Click on {string} products button")
	public void GetStartedButtonClick(String linkName) {

		WebDriverWait wait = new WebDriverWait(driver, 20);
		element = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath.getProperty(linkName))));
		element.click();
	}

	
	 @When("User Select {string} Value Drop-Down field with the value as {string}") 
     public void SelectAmoutdropDown(String linkName, String Value) {
		  
	    WebDriverWait AmountWait = new WebDriverWait(driver,20); 
	    element = AmountWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath.getProperty(linkName)))); 
	    Select Amount = new Select(element);
	    Amount.selectByValue(Value); 
	}
	 
	 @When("User Click on Dependent {string} button")
	 public void DependentSectionButtonClick(String linkName) {
		  
		 WebDriverWait DependentWait = new WebDriverWait(driver,50);
		 boolean invisible = DependentWait.until(ExpectedConditions.invisibilityOfElementLocated(By.className("loadingScreen")));
		 if (invisible) {
			              WebElement DependentButton = driver.findElement(By.xpath(xpath.getProperty(linkName)));
			              DependentButton.click();
			 
		                }
		  
	  }
	  
	 @When("User Enter Data in {string} field with the value as {string}")
	 public void EnterData(String fieldName,String value) { 
		  WebDriverWait EnterDataWait = new WebDriverWait(driver, 100);
		  element = EnterDataWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath.getProperty(fieldName))));
		  element.sendKeys(value);
	  }
	  
	 @When("User Select {string} Chek-box")
	 public void ChekBoxSelect(String linkName) {
		  
		  WebDriverWait checkBoxWait = new WebDriverWait(driver, 50);
		  element = checkBoxWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath.getProperty(linkName))));
		  element.click();
		  
	  }
 	 @When("User Enter Data in {string} and {string} iFrame field with the value as {string} and {string}")
     public void iFrameHandle(String fieldName1,String fieldName2, String value1 ,String value2 ) throws InterruptedException {
 
        WebDriverWait FrameWait = new WebDriverWait(driver, 20);
	     WebElement FrameElement = FrameWait.until(ExpectedConditions.visibilityOfElementLocated(By.id("cphMainContentBody_Wizard1_Wizard1_PaymentInfo_monerisFrame")));
	     driver.switchTo().frame(FrameElement);
	     
	     WebElement CardFieldElement = FrameWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath.getProperty(fieldName1)))); 
         CardFieldElement.sendKeys(value1);
        
	     WebElement ExDateElement = FrameWait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(xpath.getProperty(fieldName2))));
	     ExDateElement.sendKeys(value2);
	     
	     driver.switchTo().defaultContent();       
    }   
 	 @Then("Then User {string} has been submitted")
 	 public void TextCompar(String linkName) {
 		 
 		String actual = driver.findElement(By.className("orange")).getText();
	    if(actual.equalsIgnoreCase("User already exists"))
	    {
	    	System.out.println("User already exists");
	    }
	    else
	    {
	    	System.out.println("Fail");
	    } 
 	 }


 	 @When("User Concatenate a relative path to a {string} url") 
     public void appendParameter(String url ) throws InterruptedException {
    	  
 		  Thread.sleep(1000);
    	  url = driver.getCurrentUrl();
    	  String newUrl = url + "?debug=1";
    	  driver.get(newUrl);
    	  driver.navigate().to(newUrl);	  
    	
      }
 	 
 	/* @After
	 public void embedScreenshot(Scenario scenario) {
	  try {
//	    if (!scenario.isFailed()) {
//	      // Take a screenshot only in the failure case
//	      return;
//	    }
	      byte[] screenshot = ((TakesScreenshot)driver).getScreenshotAs(OutputType.BYTES);
	      scenario.embed(screenshot, "image/png");
	      driver.quit();
	   } catch (WebDriverException somePlatformsDontSupportScreenshots) {
	    scenario.write(somePlatformsDontSupportScreenshots.getMessage());
	    driver.quit();
	   }
 	}*/
}	
 


 	 
 	 
 	 

 
      
      
      
      
      

