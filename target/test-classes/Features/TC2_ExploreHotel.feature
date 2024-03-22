Feature: Verifying OMR Branch Search hotel Details Automation

  Scenario Outline: Verifying Search hotel details with valid credentials
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<city>","<roomType>","<noOfRooms>","<noOfAdults>" and "<noOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"

    Examples: 
      | userName              | password   | selectState | city    | roomType | noOfRooms | noOfAdults | noOfChildren |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai | Deluxe   | 1-One     | 1-One      |            2 |

  Scenario Outline: Verifying Search hotel details only in mandatory fields with valid credentials
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<city>","<noOfRooms>" and "<noOfAdults>"
    Then User should verify search hotel after success message "Select Hotel"

    Examples: 
      | userName              | password   | selectState | city    | noOfRooms | noOfAdults |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai | 2-Two     | 1-One      |

  @Room
  Scenario Outline: Verifying Search hotel details with valid credentials
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<city>","<roomType>","<noOfRooms>","<noOfAdults>" and "<noOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    And User should verify each hotel name ends with given room type "<roomType>"

    Examples: 
      | userName              | password   | selectState | city    | roomType | noOfRooms | noOfAdults | noOfChildren |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai | Deluxe   | 2-Two     | 1-One      |            2 |

  Scenario Outline: Verifying Search hotel details without enters the valid credentials
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User search the Explore Hotels without enters any details
    And User should verify all error messages "Please select state","Please select city","Please select Check-in date","Please select Check-out date","Please select no. of rooms" and "Please select no. of adults"

    Examples: 
      | userName              | password   |
      | gvkanagaraj@gmail.com | Gvkanak@92 |

  Scenario Outline: Verifying Search hotel details with multi select Room Type credentials
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<city>","<roomType>","<noOfRooms>","<noOfAdults>" and "<noOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    And User should verify same selected Room Type header "<roomType>"

    Examples: 
      | userName              | password   | selectState | city    | roomType              | noOfRooms | noOfAdults | noOfChildren |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai | Standard/Deluxe/Suite | 2-Two     | 1-One      |            2 |
