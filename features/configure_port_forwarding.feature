Feature: Configure Port Forwarding

  In order to use certain application and their netwroking capabilities
  A user 
  Must be able to manage portfrowarding to the application

  Scenario: User would like to forward ports for application 'steam' from a file
    Given a file "steam.yml" with a list of port numbers and protocols
    When I run mouse with the file "steam.yml"
    Then I should see that the ports specified in the file are open
    And it should pass with:
      """
      Ports have been successfully forwarded
      """
