Feature: Verifying OMR Branch Book hotel Details Automation

  @Login
  Scenario Outline: Verifying Book hotel including GST_card(debit card_VISA) with special request
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login "Welcome Kanagaraj"
    When User enters the search details "<selectState>","<city>","<roomType>","<noOfRooms>","<noOfAdults>" and "<noOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accepts the alert
    And User should verify its success message after select hotel "Book Hotel"
    When User add the guest details "<saluation>","<firstName>","<lastName>","<mobile No.>" and "<email>"
    And User add the GST details "<regno>","<company>" and "<address>" and click Next
    And User add the special request "<Any Other Request?>"
    And User add the payment details,proceed with card type "<Card Type>"
      | SelectCard  | Card no          | cardName | Month | year | CVV |
      | Visa        | 5555555555552222 | Mani     | march | 2024 | 123 |
      | Master Card | 5555555555554444 | Mani     | march | 2024 | 123 |
      | Amex        | 5555555555550000 | Mani     | march | 2024 | 123 |
      | Discover    | 5555555555556666 | Mani     | march | 2024 | 123 |
    Then User should verify after booking "Booking is Confirmed" and save the order id
    And User should verify same selected Hotel is present

    Examples: 
      | userName              | password   | selectState | city    | roomType | noOfRooms | noOfAdults | noOfChildren | saluation | firstName | lastName | mobile No. | email                 | regno      | company                | address      | Any Other Request? |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai | Deluxe   | 2-Two     | 1-One      |            2 | Mr.       | kanak     | raj      | 9894982610 | gvkanagaraj@gmail.com | 9043592058 | Greens Tech OMR Branch | Thoraipakkam | Add bonfire        |

  Scenario Outline: Verifying Book hotel including GST_card(credit card_VISA) with special request
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login " Welcome Kanagaraj"
    When User enters the search details "<SelectState>","<city>","<RoomType>","<CheckIn>","<CheckOut>","<NoOfRooms>","<NoOfAdults>" and "<NoOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accepts the alert
    And User should verify its success message after select hotel "Book Hotel"
    When User add the guest details "<Select Saluation>","<FirstName>","<LastName>","<Mobile No.>" and "<Email>"
    And User add the GST details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Name>" and click Next
    And User add the special request "<Any Other Request?>"
    And User add the payment details,proceed with card type "<Card Type>"
      | Select Card | Card no          | cardName | Month | year | CVV |
      | Visa        | 5555555555552223 | Mani     | march | 2024 | 123 |
      | Master Card | 5555555555554444 | Mani     | march | 2024 | 123 |
      | Amex        | 5555555555550000 | Mani     | march | 2024 | 123 |
      | Discover    | 5555555555556666 | Mani     | march | 2024 | 123 |
    Then User should verify after booking "Booking is Confirmed" and save the order id
    And User should verify same selected Hotel is present

    Examples: 
      | userName              | password   | SelectState | city    | RoomType | CheckIn    | CheckOut   | NoOfRooms | NoOfAdults | NoOfChildren | Select Saluation | FirstName | LastName | Mobile No. | Email                 | Enter Registration No. | Enter Company Name     | Enter Company Name | Any Other Request? |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai | Deluxe   | 2023-09-21 | 2023-09-29 | 2-Two     | 1-One      |            2 | Mr.              | kanak     | raj      | 9894982610 | gvkanagaraj@gmail.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam       | Add bonfire        |

  Scenario Outline: Verifying Book hotel including GST_card(debit card_VISA) without special request
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login " Welcome Kanagaraj"
    When User enters the search details "<SelectState>","<SelectCity>","<RoomType>","<CheckIn>","<CheckOut>","<NoOfRooms>","<NoOfAdults>" and "<NoOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accepts the alert
    And User should verify its success message after select hotel "Book Hotel"
    When User add the guest details "<Select Saluation>","<FirstName>","<LastName>","<Mobile No.>" and "<Email>"
    And User add the GST details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Name>" and click Next
    And User add the payment details,proceed with card type "<Card Type>"
      | Select Card | Card no          | cardName | Month | year | CVV |
      | Visa        | 5555555555552222 | Mani     | march | 2024 | 123 |
      | Master Card | 5555555555554444 | Mani     | march | 2024 | 123 |
      | Amex        | 5555555555550000 | Mani     | march | 2024 | 123 |
      | Discover    | 5555555555556666 | Mani     | march | 2024 | 123 |
    Then User should verify after booking "Booking is Confirmed" and save the order id
    And User should verify same selected Hotel is present

    Examples: 
      | userName              | password   | SelectState | SelectCity | RoomType | CheckIn    | CheckOut   | NoOfRooms | NoOfAdults | NoOfChildren | Select Saluation | FirstName | LastName | Mobile No. | Email                 | Enter Registration No. | Enter Company Name     | Enter Company Name |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai    | Deluxe   | 2023-09-21 | 2023-09-29 | 2-Two     | 1-One      |            2 | Mr.              | kanak     | raj      | 9894982610 | gvkanagaraj@gmail.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam       |

  Scenario Outline: Verifying Book hotel including GST_card(credit card_VISA) without special request
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login " Welcome Kanagaraj"
    When User enters the search details "<SelectState>","<SelectCity>","<RoomType>","<CheckIn>","<CheckOut>","<NoOfRooms>","<NoOfAdults>" and "<NoOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accepts the alert
    And User should verify its success message after select hotel "Book Hotel"
    When User add the guest details "<Select Saluation>","<FirstName>","<LastName>","<Mobile No.>" and "<Email>"
    And User add the GST details "<Enter Registration No.>","<Enter Company Name>" and "<Enter Company Name>" and click Next
    And User add the payment details,proceed with card type "<Card Type>"
      | Select Card | Card no          | cardName | Month | year | CVV |
      | Visa        | 5555555555552223 | Mani     | march | 2024 | 123 |
      | Master Card | 5555555555554444 | Mani     | march | 2024 | 123 |
      | Amex        | 5555555555550000 | Mani     | march | 2024 | 123 |
      | Discover    | 5555555555556666 | Mani     | march | 2024 | 123 |
    Then User should verify after booking "Booking is Confirmed" and save the order id
    And User should verify same selected Hotel is present

    Examples: 
      | userName              | password   | SelectState | SelectCity | RoomType | CheckIn    | CheckOut   | NoOfRooms | NoOfAdults | NoOfChildren | Select Saluation | FirstName | LastName | Mobile No. | Email                 | Enter Registration No. | Enter Company Name     | Enter Company Name |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai    | Deluxe   | 2023-09-21 | 2023-09-29 | 2-Two     | 1-One      |            2 | Mr.              | kanak     | raj      | 9894982610 | gvkanagaraj@gmail.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam       |

  Scenario Outline: Verifying Book hotel without GST_card(debit card_VISA) with special request
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login " Welcome Kanagaraj"
    When User enters the search details "<SelectState>","<SelectCity>","<RoomType>","<CheckIn>","<CheckOut>","<NoOfRooms>","<NoOfAdults>" and "<NoOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accepts the alert
    And User should verify its success message after select hotel "Book Hotel"
    When User add the guest details "<Select Saluation>","<FirstName>","<LastName>","<Mobile No.>" and "<Email>"
    And User click Next
    And User add the special request "<Any Other Request?>"
    And User add the payment details,proceed with card type "<Card Type>"
      | Select Card | Card no          | cardName | Month | year | CVV |
      | Visa        | 5555555555552222 | Mani     | march | 2024 | 123 |
      | Master Card | 5555555555554444 | Mani     | march | 2024 | 123 |
      | Amex        | 5555555555550000 | Mani     | march | 2024 | 123 |
      | Discover    | 5555555555556666 | Mani     | march | 2024 | 123 |
    Then User should verify after booking "Booking is Confirmed" and save the order id
    And User should verify same selected Hotel is present

    Examples: 
      | userName              | password   | SelectState | SelectCity | RoomType | CheckIn    | CheckOut   | NoOfRooms | NoOfAdults | NoOfChildren | Select Saluation | FirstName | LastName | Mobile No. | Email                 | Any Other Request? |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai    | Deluxe   | 2023-09-21 | 2023-09-29 | 2-Two     | 1-One      |            2 | Mr.              | kanak     | raj      | 9894982610 | gvkanagaraj@gmail.com | Add bonfire        |

  Scenario Outline: Verifying Book hotel without GST_card(credit card_VISA) without special request
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login " Welcome Kanagaraj"
    When User enters the search details "<SelectState>","<SelectCity>","<RoomType>","<CheckIn>","<CheckOut>","<NoOfRooms>","<NoOfAdults>" and "<NoOfChildren>"
    Then User should verify search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accepts the alert
    And User should verify its success message after select hotel "Book Hotel"
    When User add the guest details "<Select Saluation>","<FirstName>","<LastName>","<Mobile No.>" and "<Email>"
    And User clicks Next without entering GST_card fields
    Then User again clicks Next without entering special request field
    And User add the payment details,proceed with card type "<Card Type>"
      | Select Card | Card no          | cardName | Month | year | CVV |
      | Visa        | 5555555555552223 | Mani     | march | 2024 | 123 |
      | Master Card | 5555555555554444 | Mani     | march | 2024 | 123 |
      | Amex        | 5555555555550000 | Mani     | march | 2024 | 123 |
      | Discover    | 5555555555556666 | Mani     | march | 2024 | 123 |
    Then User should verify after booking "Booking is Confirmed" and save the order id
    And User should verify same selected Hotel is present

    Examples: 
      | userName              | password   | SelectState | SelectCity | RoomType | CheckIn    | CheckOut   | NoOfRooms | NoOfAdults | NoOfChildren | Select Saluation | FirstName | LastName | Mobile No. | Email                 |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai    | Deluxe   | 2023-09-21 | 2023-09-29 | 2-Two     | 1-One      |            2 | Mr.              | kanak     | raj      | 9894982610 | gvkanagaraj@gmail.com |

  Scenario Outline: Verifying error message in  Book hotel page
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify sucess message after login " Welcome Kathir"
    When User enters the search details "<SelectState>","<SelectCity>","<RoomType>","<CheckIn>","<CheckOut>","<Rooms>","<Adults>" and "<Child>"
    Then User should verify search hotel after success message "Select Hotel"
    When User selects the first hotel name and save the name,price
    Then User accepts the alert
    And User should verify its success message after select hotel "Book Hotel"
    When User click Next without adding guest details
    Then User should verify all error message "Let us know for whom you are booking the hotel","Please select Salutation of the user","Please provide First Name of the user","Please provide Last Name of the user","Please provide Contact Number of the user to ease the communication (if required)" and "Please provide Email ID of the user to ease the communication (if required)"

    Examples: 
      | userName              | password   | SelectState | SelectCity | RoomType | CheckIn    | CheckOut   | NoOfRooms | NoOfAdults | NoOfChildren |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai    | Deluxe   | 2023-09-21 | 2023-09-29 | 2-Two     | 1-One      |            2 |
