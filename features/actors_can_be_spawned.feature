Feature: Actors can be spawned

  In order to have an interesting scenario
  As a designer of games 
  I want to spawn 2 actors in a zone with different names.

  Scenario: Spawn 2 actors in a world
    Given a world named "The Stage"
    When I tell it to spawn an actor named "Jemima"
    And I tell it to spawn an actor named "Ralph"
    Then I should see "Jemima enters the stage."
    And I should see "Ralph enters the stage."
