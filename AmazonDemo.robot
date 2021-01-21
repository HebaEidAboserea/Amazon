*** Settings ***
Documentation    this test cases for Amazon Website

Library     Selenium2Library     

*** Variables ***


*** Test Cases ***
 user can search by products
    
  Open Browser  https://www.amazon.com/   chrome
  Maximize Browser Window
  Wait Until Page Contains    amazon  
  Input Text    id:twotabsearchtextbox    huawei p30 pro 
  Click Button    id:nav-search-submit-button  
  Wait Until Page Contains    results for "huawei p30 pro"
  Click Image    xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/div[2]/div[1]/div/div/span/a/div/img  
  Wait Until Page Contains   huawei 
  Close Browser      
       
user can view product
    
   Open Browser  https://www.amazon.com/   chrome
  Maximize Browser Window
  Wait Until Page Contains    amazon  
  Input Text    id:twotabsearchtextbox    huawei p30 pro 
  Click Button    id:nav-search-submit-button  
  Wait Until Page Contains    results for "huawei p30 pro"
  Click Image    xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/div[2]/div[1]/div/div/span/a/div/img  
  Wait Until Page Contains   huawei 
  Close Browser   
  
user can add product
  Open Browser  https://www.amazon.com/   chrome
  Maximize Browser Window
  Wait Until Page Contains    amazon  
  Input Text    id:twotabsearchtextbox    huawei p30 pro 
  Click Button    id:nav-search-submit-button  
  Wait Until Page Contains    results for "huawei p30 pro"
  Click Image    xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/div[2]/div[1]/div/div/span/a/div/img  
  Wait Until Page Contains   huawei 
  Click Button    id:add-to-cart-button 
  Wait Until Page Contains    Added to Cart       
  Close Browser 
  
user can checkout
   Open Browser  https://www.amazon.com/   chrome
  Maximize Browser Window
  Wait Until Page Contains    amazon  
  Input Text    id:twotabsearchtextbox    huawei p30 pro 
  Click Button    id:nav-search-submit-button  
  Wait Until Page Contains    results for "huawei p30 pro"
  Click Image    xpath://*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/div[2]/div[1]/div/div/span/a/div/img  
  Wait Until Page Contains   huawei 
  Click Button    id:add-to-cart-button 
  Wait Until Page Contains    Added to Cart 
  Click link    id:hlb-ptc-btn-native
  Wait Until Page Contains    Sign-In
  Close Browser     

    
    
   
       
    
    