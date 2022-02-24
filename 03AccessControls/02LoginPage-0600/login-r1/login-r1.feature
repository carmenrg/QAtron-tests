Feature: the login page address exists

        Background:
            Given User types login page into supported browser

        Scenario Outline: login website address exists
            Given the User enters the website address
              And the browser is supported
             Then the http response status code is "200"
              And the expected website (QAtron Login page) appears

        Examples:
                  | tests                                          |
                  | LoginPageExists.js|
              

Feature: the login page allows Users to enter their email

        Background:
            Given User types login page into supported browser

        Scenario Outline: User can enter email address in login page
            Given the User enters the website address
              And the browser is supported
             Then there is a section to enter an email address
              And the User can type in this section

        Examples:
                  | tests                                          |
                  | LoginPageEmailSection.js|


Feature: the login page allows Users to enter their password

        Background: the User can enter a password in the login page
            Given User types login page into supported browser

        Scenario Outline:
            Given the User enters the website address
              And the browser is supported
             Then there is a section to enter a password
              And the User can type in this section

        Examples:
                  | tests                                          |
                  | LoginPagePasswordSection.js|



Feature: from the login page Users can reset their password

        Background: the User can reset their password from the login page
            Given User types login page into supported browser

        Scenario Outline:
            Given the User enters the website address
              And the browser is supported
             Then there is a button to reset the password
              And the User can click this button

        Examples:
                  | tests                                          |
                  | LoginPagePasswordReset.js|

        


Feature: the login page allows Users to find email support for Dosium

        Background: the User can click on an email address for Dosium support
            Given User types login page into supported browser

        Scenario Outline:
            Given the User enters the website address
              And the browser is supported
             Then there is an email link for Dosium support
              And the User can click this link 
              And email applications will open up 

        Examples:
                  | tests                                          |
                  | LoginPageSupportEmail.js|