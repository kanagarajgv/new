Feature: Verifying OMR Branch Select hotel Details Automation

  Scenario Outline: Verifying Select hotel and navigate to book hotel upon accepting the alert
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<roomType>","<noOfRooms>","<noOfAdults>" and "<noOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accepts the alert
    And User should verify its success message after select hotel "Book Hotel"

    Examples: 
      | userName              | password   | selectState | roomType | noOfRooms | noOfAdults | noOfChildren |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Deluxe   | 2-Two     | 1-One      |            2 |

  Scenario Outline: Verifying Select hotel and navigate to same page upon dismiss the alert
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<roomType>","<noOfRooms>","<noOfAdults>" and "<noOfChildren>"
    Then User should verify the search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User dismiss the alert
    And User should verify the search hotel after success message "Select Hotel"

    Examples: 
      | userName              | password   | selectState | roomType | noOfRooms | noOfAdults | noOfChildren |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Deluxe   | 2-Two     | 1-One      |            2 |

  Scenario Outline: Verifying Select hotel details with using the filter low to high price
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<roomType>","<noOfRooms>","<noOfAdults>" and "<noOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User clicks price low to high filter
    Then User should verify hotel price listed from low to high

    Examples: 
      | userName              | password   | selectState | roomType | noOfRooms | noOfAdults | noOfChildren |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Standard | 2-Two     | 1-One      |            2 |

  Scenario Outline: Verifying Select hotel details with decending order filter
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<roomType>","<noOfRooms>","<noOfAdults>" and "<noOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User clicks Name Descending filter
    Then User should verify hotel names of descending order

    Examples: 
      | userName              | password   | selectState | selectCity | roomType | noOfRooms | noOfAdults | noOfChildren |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai    | Standard | 2-Two     | 1-One      |            2 |
