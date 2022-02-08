@TPA1
Feature: Validate product flows.

  @conversion
  Scenario Outline: Critical Illness Product flow.
    Given User navigates to "<Portals>" url
    When User Select "Yes" Radio button
    When User Select "Employee" Radio button
    When User Select "Male" Radio button
    When User Select "Year" Drop-Down field with the value as "1991"
    When User Select "Month" Value Drop-Down field with the value as "5"
    When User Select "Day" Drop-Down field with the value as "25"
    When User Click on "Continue" button
    When User Click on "<Get Started>" products button
    When User Concatenate a relative path to a "<Portals>" url
    When User Select "Benefit_Amount" Value Drop-Down field with the value as "<Benefit Amount>"
    And User Click on Dependent "Yes_For_Dependent" button
    And User Select "Benefit_Amount_Dependent" Value Drop-Down field with the value as "1"
    And User Click on Dependent "Continue_For_NextStep1" button
    And User Select "Person_titles" Value Drop-Down field with the value as "2"
    When User Enter Data in "PersonalInformation_Fname" field with the value as "VshiftTest-FirstName"
    And User Enter Data in "PersonalInformation_Mname" field with the value as "VshiftTest-MiddelName"
    And User Enter Data in "PersonalInformation_Lname" field with the value as "VshiftTest-LastName"
    And User Enter Data in "Address1" field with the value as "VshiftTest-Address1"
    And User Enter Data in "Address2" field with the value as "VshiftTest-Address2"
    And User Enter Data in "City" field with the value as "VshiftTest-City"
    When User Select "Choose_A_Province" Value Drop-Down field with the value as "3"
    And User Enter Data in "Postal_Code" field with the value as "A1A1A1"
    And User Enter Data in "Email" field with the value as "Vshiftest@test.com"
    And User Enter Data in "Re-Email" field with the value as "Vshiftest@test.com"
    When User Select "Phone_Type" Value Drop-Down field with the value as "2"
    And User Enter Data in "Phone1" field with the value as "333"
    And User Enter Data in "Phone2" field with the value as "333"
    And User Enter Data in "Phone3" field with the value as "3333"
    When User Select "PersonalInfo1_Chk_permission1" Chek-box
    When User Select "PersonalInfo1_Chk_permission2" Chek-box
    And User Enter Data in "DependentsFName" field with the value as "VshiftTest-DependentsFName"
    And User Enter Data in "DependentsMName" field with the value as "VshiftTest-DependentsFName"
    And User Enter Data in "DependentsLName" field with the value as "VshiftTest-DependentsFName"
    When User Select "DependentsDOBYear" Drop-Down field with the value as "2020"
    When User Select "DependentsDOBMonth" Value Drop-Down field with the value as "2"
    When User Select "DependentsDOBDay" Drop-Down field with the value as "25"
    When User Select "DependentsGender" Radio button
    And User Click on Dependent "Continue_For_NextStep2" button
    And User Enter Data in "BeneficiaryFname" field with the value as "VshiftTest-BeneficiaryFname"
    And User Enter Data in "BeneficiaryLname" field with the value as "VshiftTest-BeneficiaryLname"
    When User Select "Relationship" Value Drop-Down field with the value as "Parent"
    And User Enter Data in "Percentage" field with the value as "100"
    When User Click on Dependent "Continue_For_NextStep3" button
    When User Select "Credit_Card" Radio button
    And User Enter Data in "Card_Number" and "Expiry_Date" iFrame field with the value as "4242424242424242" and "1123"
    When User Select "Payment_ChekBox" Chek-box
    When User Click on Dependent "Continue_For_NextStep4" button
    When User Click on "Continue_For_NextStep5" button
    When User Select "Accept_CheckBox" Chek-box
    When User Click on Dependent "Finish" button

    Examples: 
      | Portals | Get Started | Benefit Amount |
      | conversion    | Product1    |              5 |
      
  @AD
  Scenario Outline: Accidental Death & Dismemberment Product flow.
    Given User navigates to "<Portals>" url
    When User Select "Yes" Radio button
    When User Select "Employee" Radio button
    When User Select "Male" Radio button
    When User Select "Year" Drop-Down field with the value as "1991"
    When User Select "Month" Value Drop-Down field with the value as "5"
    When User Select "Day" Drop-Down field with the value as "25"
    When User Click on "Continue" button
    When User Click on "<Get Started>" products button
    When User Concatenate a relative path to a "<Portals>" url
    When User Select "Benefit_Amount" Value Drop-Down field with the value as "<Benefit Amount>"
    And User Click on Dependent "Yes_For_Dependent" button
    And User Select "Benefit_Amount_Dependent" Value Drop-Down field with the value as "1"
    And User Click on Dependent "Continue_For_NextStep1" button
    And User Select "Person_titles" Value Drop-Down field with the value as "2"
    When User Enter Data in "PersonalInformation_Fname" field with the value as "VshiftTest-FirstName"
    And User Enter Data in "PersonalInformation_Mname" field with the value as "VshiftTest-MiddelName"
    And User Enter Data in "PersonalInformation_Lname" field with the value as "VshiftTest-LastName"
    And User Enter Data in "Address1" field with the value as "VshiftTest-Address1"
    And User Enter Data in "Address2" field with the value as "VshiftTest-Address2"
    And User Enter Data in "City" field with the value as "VshiftTest-City"
    When User Select "Choose_A_Province" Value Drop-Down field with the value as "2"
    And User Enter Data in "Postal_Code" field with the value as "A1A1A1"
    And User Enter Data in "Email" field with the value as "Vshiftest@test.com"
    And User Enter Data in "Re-Email" field with the value as "Vshiftest@test.com"
    When User Select "Phone_Type" Value Drop-Down field with the value as "2"
    And User Enter Data in "Phone1" field with the value as "333"
    And User Enter Data in "Phone2" field with the value as "333"
    And User Enter Data in "Phone3" field with the value as "3333"
    When User Select "PersonalInfo1_Chk_permission1" Chek-box
    When User Select "PersonalInfo1_Chk_permission2" Chek-box
    And User Enter Data in "DependentsFName" field with the value as "VshiftTest-DependentsFName"
    And User Enter Data in "DependentsMName" field with the value as "VshiftTest-DependentsFName"
    And User Enter Data in "DependentsLName" field with the value as "VshiftTest-DependentsFName"
    When User Select "DependentsDOBYear" Drop-Down field with the value as "2020"
    When User Select "DependentsDOBMonth" Value Drop-Down field with the value as "2"
    When User Select "DependentsDOBDay" Drop-Down field with the value as "25"
    When User Select "DependentsGender" Radio button
    And User Click on Dependent "Continue_For_NextStep2" button
    And User Enter Data in "BeneficiaryFname" field with the value as "VshiftTest-BeneficiaryFname"
    And User Enter Data in "BeneficiaryLname" field with the value as "VshiftTest-BeneficiaryLname"
    When User Select "Relationship" Value Drop-Down field with the value as "Parent"
    And User Enter Data in "Percentage" field with the value as "100"
    When User Click on Dependent "Continue_For_NextStep3" button
    When User Select "Credit_Card" Radio button
    And User Enter Data in "Card_Number" and "Expiry_Date" iFrame field with the value as "4242424242424242" and "1123"
    When User Select "Payment_ChekBox" Chek-box
    When User Click on Dependent "Continue_For_NextStep4" button
    When User Click on "Continue_For_NextStep5" button
    When User Select "Accept_CheckBox" Chek-box
    When User Click on Dependent "Finish" button

    Examples: 
      | Portals | Get Started | Benefit Amount |
      | TPA1    | Product2    |             10 |
      
  @FE
  Scenario Outline: Final Expense Coverage Product flow.
    Given User navigates to "<Portals>" url
    When User Select "Yes" Radio button
    When User Select "Employee" Radio button
    When User Select "Male" Radio button
    When User Select "Year" Drop-Down field with the value as "1991"
    When User Select "Month" Value Drop-Down field with the value as "5"
    When User Select "Day" Drop-Down field with the value as "25"
    When User Click on "Continue" button
    When User Click on "<Get Started>" products button
    When User Concatenate a relative path to a "<Portals>" url
    When User Select "Benefit_Amount" Value Drop-Down field with the value as "<Benefit Amount>"
    And User Click on Dependent "Yes_For_Dependent" button
    And User Select "Benefit_Amount_Dependent" Value Drop-Down field with the value as "1"
    And User Click on Dependent "Continue_For_NextStep1" button
    And User Select "Person_titles" Value Drop-Down field with the value as "2"
    When User Enter Data in "PersonalInformation_Fname" field with the value as "VshiftTest-FirstName"
    And User Enter Data in "PersonalInformation_Mname" field with the value as "VshiftTest-MiddelName"
    And User Enter Data in "PersonalInformation_Lname" field with the value as "VshiftTest-LastName"
    And User Enter Data in "Address1" field with the value as "VshiftTest-Address1"
    And User Enter Data in "Address2" field with the value as "VshiftTest-Address2"
    And User Enter Data in "City" field with the value as "VshiftTest-City"
    When User Select "Choose_A_Province" Value Drop-Down field with the value as "2"
    And User Enter Data in "Postal_Code" field with the value as "A1A1A1"
    And User Enter Data in "Email" field with the value as "Vshiftest@test.com"
    And User Enter Data in "Re-Email" field with the value as "Vshiftest@test.com"
    When User Select "Phone_Type" Value Drop-Down field with the value as "2"
    And User Enter Data in "Phone1" field with the value as "333"
    And User Enter Data in "Phone2" field with the value as "333"
    And User Enter Data in "Phone3" field with the value as "3333"
    When User Select "PersonalInfo1_Chk_permission1" Chek-box
    When User Select "PersonalInfo1_Chk_permission2" Chek-box
    And User Enter Data in "DependentsFName" field with the value as "VshiftTest-DependentsFName"
    And User Enter Data in "DependentsMName" field with the value as "VshiftTest-DependentsFName"
    And User Enter Data in "DependentsLName" field with the value as "VshiftTest-DependentsFName"
    When User Select "DependentsDOBYear" Drop-Down field with the value as "2020"
    When User Select "DependentsDOBMonth" Value Drop-Down field with the value as "2"
    When User Select "DependentsDOBDay" Drop-Down field with the value as "25"
    When User Select "DependentsGender" Radio button
    And User Click on Dependent "Continue_For_NextStep2" button
    And User Enter Data in "BeneficiaryFname" field with the value as "VshiftTest-BeneficiaryFname"
    And User Enter Data in "BeneficiaryLname" field with the value as "VshiftTest-BeneficiaryLname"
    When User Select "Relationship" Value Drop-Down field with the value as "Parent"
    And User Enter Data in "Percentage" field with the value as "100"
    When User Click on Dependent "Continue_For_NextStep3" button
    When User Select "Credit_Card" Radio button
    And User Enter Data in "Card_Number" and "Expiry_Date" iFrame field with the value as "4242424242424242" and "1123"
    When User Select "Payment_ChekBox" Chek-box
    When User Click on Dependent "Continue_For_NextStep4" button
    When User Click on "Continue_For_NextStep5" button
    When User Select "Accept_CheckBox" Chek-box
    When User Click on Dependent "Finish" button

    Examples: 
      | Portals | Get Started | Benefit Amount |
      | TPA1    | Product3    |              5 |
     
  @HC
  Scenario Outline: Hospital Cash Product flow.
    Given User navigates to "<Portals>" url
    When User Select "Yes" Radio button
    When User Select "Employee" Radio button
    When User Select "Male" Radio button
    When User Select "Year" Drop-Down field with the value as "1991"
    When User Select "Month" Value Drop-Down field with the value as "5"
    When User Select "Day" Drop-Down field with the value as "25"
    When User Click on "Continue" button
    When User Click on "<Get Started>" products button
    When User Concatenate a relative path to a "<Portals>" url
    When User Select "Benefit_Level" Value Drop-Down field with the value as "1"
    When User Select "Benefit_Amount" Value Drop-Down field with the value as "<Benefit Amount>"
    And User Click on Dependent "Yes_For_Dependent" button
    And User Select "Benefit_Amount_Dependent" Value Drop-Down field with the value as "1"
    And User Click on Dependent "Continue_For_NextStep1" button
    And User Select "Person_titles" Value Drop-Down field with the value as "2"
    When User Enter Data in "PersonalInformation_Fname" field with the value as "VshiftTest-FirstName"
    And User Enter Data in "PersonalInformation_Mname" field with the value as "VshiftTest-MiddelName"
    And User Enter Data in "PersonalInformation_Lname" field with the value as "VshiftTest-LastName"
    And User Enter Data in "Address1" field with the value as "VshiftTest-Address1"
    And User Enter Data in "Address2" field with the value as "VshiftTest-Address2"
    And User Enter Data in "City" field with the value as "VshiftTest-City"
    When User Select "Choose_A_Province" Value Drop-Down field with the value as "2"
    And User Enter Data in "Postal_Code" field with the value as "A1A1A1"
    And User Enter Data in "Email" field with the value as "Vshiftest@test.com"
    And User Enter Data in "Re-Email" field with the value as "Vshiftest@test.com"
    When User Select "Phone_Type" Value Drop-Down field with the value as "2"
    And User Enter Data in "Phone1" field with the value as "333"
    And User Enter Data in "Phone2" field with the value as "333"
    And User Enter Data in "Phone3" field with the value as "3333"
    When User Select "PersonalInfo1_Chk_permission1" Chek-box
    When User Select "PersonalInfo1_Chk_permission2" Chek-box
    And User Enter Data in "DependentsFName" field with the value as "VshiftTest-DependentsFName"
    And User Enter Data in "DependentsMName" field with the value as "VshiftTest-DependentsFName"
    And User Enter Data in "DependentsLName" field with the value as "VshiftTest-DependentsFName"
    When User Select "DependentsDOBYear" Drop-Down field with the value as "2020"
    When User Select "DependentsDOBMonth" Value Drop-Down field with the value as "2"
    When User Select "DependentsDOBDay" Drop-Down field with the value as "25"
    When User Select "DependentsGender" Radio button
    And User Click on Dependent "Continue_For_NextStep2" button
    And User Enter Data in "BeneficiaryFname" field with the value as "VshiftTest-BeneficiaryFname"
    And User Enter Data in "BeneficiaryLname" field with the value as "VshiftTest-BeneficiaryLname"
    When User Select "Relationship" Value Drop-Down field with the value as "Parent"
    And User Enter Data in "Percentage" field with the value as "100"
    When User Click on Dependent "Continue_For_NextStep3" button
    When User Select "Credit_Card" Radio button
    And User Enter Data in "Card_Number" and "Expiry_Date" iFrame field with the value as "4242424242424242" and "1123"
    When User Select "Payment_ChekBox" Chek-box
    When User Click on Dependent "Continue_For_NextStep4" button
    When User Click on "Continue_For_NextStep5" button
    When User Select "Accept_CheckBox" Chek-box
    When User Click on Dependent "Finish" button

    Examples: 
      | Portals | Get Started | Benefit Amount |
      | TPA1    | Product4    |              5 |
     
