Feature: signing in with a correct email and password
        Background: the User can log in
            Given User types in correct email, which is registered, and a password, which is not temporary

        Scenario Outline:
            Given the User enters the website address
              And the browser is supported
              And the User has entered a registered email address
              And the User has entered a correct password which is not temporary
             Then sign-in is successful
              And the Formulary and Work Stream Selection Page shows
         
        Examples:
                  | tests                                          |
                  | LoginSuccess.js|


Feature: signing in with a correct, registered email and password
        Background: sign-in must fail but for security purposes not report the reason
            Given User types in a correct email, which is not registered, and a password

        Scenario Outline:
            Given the User enters the website address
              And the browser is supported
              And the User has entered an email address that is not registered
              And the User has entered a password
             Then sign-in is fails
              And a generic error is reported
         
        Examples:
                  | tests                                          |
                  | EmailNotRegistered.js|


Feature: signing in with a correct, registered email and no password
        Background: sign-in must fail and an informative error must be displayed
            Given User types in correct email, which is registered, but no password

        Scenario Outline:
            Given the User enters the website address
              And the browser is supported
              And the User has entered an email address that is registered
             Then sign-in is fails
              And an error "Password is required" is reportef
         
        Examples:
                  | tests                                          |
                  | PasswordMissingForRegisteredEmail.js|


Feature: signing in with a correct, registered email and an incorrect password for the email
        Background: sign-in must fail but for security purposes not report the reason
            Given User types in correct email, which is registered, and an incorrect password

        Scenario Outline:
            Given the User enters the website address
              And the browser is supported
              And the User has entered an email address that is registered
              And the User enters an incorrect password for the email
             Then sign-in fails
              And a generic error is reported
              
         
        Examples:
                  | tests                                          |
                  | PasswordIncorrectForRegisteredEmail.js|


