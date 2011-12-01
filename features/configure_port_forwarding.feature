Feature: Configure Port Forwarding

  In order to use certain application and their netwroking capabilities
  A user 
  Must be able to manage portfrowarding to the application

  Scenario: User would like to forward ports for application 'steam' from a file
    Given a file "steam.yml" with a list of port numbers and protocols:
      """
      ---
      udp: 
      - !ruby/range
        begin: 27000
        end: 27030
        excl: false
      - 4380
      """
    When I run mouse with the file "steam.yml"
    Then I should see that the ports specified in the file "steam.yml" are open
    And it should pass with:
      """
      Ports have been successfully forwarded
      """
