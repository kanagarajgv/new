Feature: Verifying OMR Branch hotel Login Automation

  @Login
  Scenario Outline: Verifying login with valid credentials
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>"
    Then User should verify sucess message after login "Welcome Kanagaraj"

    Examples: 
      | userName              | password   |
      | gvkanagaraj@gmail.com | Gvkanak@92 |

  Scenario Outline: Verifying login with valid credentials using ENTER key
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"

    Examples: 
      | userName              | password   |
      | gvkanagaraj@gmail.com | Gvkanak@92 |

  Scenario Outline: Verifying login with invalid credentials
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>"
    Then User should verify error message after login "Invalid Login details or Your Password might have expired."

    Examples: 
      | userName              | password     |
      | gvkanagaraj@gmail.com | Gvkanak@9294 |
