Feature: Verifying OMR Branch Change Book hotel Details Automation

  Scenario Outline: Verifying change Booking module by changing checkInDate for created orderId
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
    And User add the special request "<Any Other Request?>"
    And User add the payment details,proceed with card type "<Card Type>"
      | Select Card | Card no          | cardName | Month | year | CVV |
      | Visa        | 5555555555552222 | Mani     | march | 2024 | 123 |
      | Master Card | 5555555555554444 | Mani     | march | 2024 | 123 |
      | Amex        | 5555555555550000 | Mani     | march | 2024 | 123 |
      | Discover    | 5555555555556666 | Mani     | march | 2024 | 123 |
    Then User should verify after booking "Booking is Confirmed" and save the order id
    And User should verify same selected Hotel is present
    When User navigate to My Booking page
    Then User should verify the success message "Bookings" after navigate to Booking page
    When User search the orderId with saved orderId
    Then User should verify the same orderId is present successfully
    And User should verify the same Hotel name is present successfully
    And User should verify the same Hotel price is present sucessfully
    When User edit the booking by changing the checkInDate "<checkInDate>"
    Then User should verify after editing the checkInDate success message "Booking updated successfully"

    Examples: 
      | userName              | password   | SelectState | SelectCity | RoomType | CheckIn    | CheckOut   | NoOfRooms | NoOfAdults | NoOfChildren | Select Saluation | FirstName | LastName | Mobile No. | Email                 | Enter Registration No. | Enter Company Name     | Enter Company Name | Any Other Request? | checkInDate |
      | gvkanagaraj@gmail.com | Gvkanak@92 | Tamil Nadu  | Chennai    | Deluxe   | 2023-09-21 | 2023-09-29 | 2-Two     | 1-One      |            2 | Mr.              | kanak     | raj      | 9894982610 | gvkanagaraj@gmail.com |             9043592058 | Greens Tech OMR Branch | Thoraipakkam       | Add bonfire        | 2023-09-22  |

  Scenario Outline: Verifying change Booking module by changing checkInDate for first orderId(login--->My Account-->Edit-->change CheckInDate)
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify success message after login " Welcome Kanagaraj"
    When User navigate to My Booking page
    Then User should verify the success message "Bookings"
    When User clicks the Edit of first orderId
    And User Modify the first orderId checkInDate "<CheckInDate>"
    Then User should verify the success message "Booking updated successfully" after modified the checkInDate

    Examples: 
      | userName              | password   | CheckInDate |
      | gvkanagaraj@gmail.com | Gvkanak@92 | 2023-09-22  |

  Scenario Outline: Verifying change Booking module by changing checkInDate for existing orderId(login--->My Account-->Edit-->change CheckInDate)
    Given User is on the OMR Branch hotel page
    When User login "<userName>","<password>" with Enter key
    Then User should verify success message after login " Welcome Kanagaraj"
    When User navigate to My Booking page
    Then User should verify the success message "Bookings"
    When User clicks the Edit of Existing orderId
    And User Modify the existing orderId checkInDate "<CheckInDate>"
    Then User should verify the success message "Booking updated successfully" after modified the checkInDate

    Examples: 
      | userName              | password   | CheckInDate |
      | gvkanagaraj@gmail.com | Gvkanak@92 | 2023-09-22  |
