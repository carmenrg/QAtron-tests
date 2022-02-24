Feature: signing in with an incorrect email and password
        Background: signing must fail and an informative error reported
            Given User types in incorrect email and a password

        Scenario Outline:
            Given the User enters the website address
              And the browser is supported
              And the User has entered an incorrect email address
              And the User has entered a password
             Then sign-in fails
              And an error "Email is not valid" is reported
         
        Examples:
                  | tests                                          |
                  | InvalidEmail-no@.js|
                  | InvalidEmail-brackets.js |