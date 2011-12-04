Feature: Actors can be spawned

  In order to have an interesting scenario
  As a designer of games 
  I want to spawn 2 actors in a zone with different names.

  Scenario: Spawn 2 actors in a room
    Given a room named "The Stage"
    When I tell it to spawn an actor named "Jemima"
    And I tell it to spawn an actor named "Ralph"
    Then I should see "Jemima enters The Stage."
    And I should see "Ralph enters The Stage."

  Scenario: Actors can speak and hear each other
    Given our party
    When Jemima says "Hello there."
    Then Ralph should hear "Hello there." from Jemima