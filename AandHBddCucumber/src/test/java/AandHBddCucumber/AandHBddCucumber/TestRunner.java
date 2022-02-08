 package AandHBddCucumber.AandHBddCucumber;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;	
import cucumber.api.junit.Cucumber;	

@RunWith(Cucumber.class)
@CucumberOptions(features="Features",glue= {"StepDefination"},
plugin= {"pretty","html:target/cucumber-reports"},
monochrome=true,tags= {"@conversion"})

public class TestRunner 
{
	
}
