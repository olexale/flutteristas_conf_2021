Feature: Space Launches test
    Background:
        Given the app is running

    Scenario: Space launches list is loaded
        Given the BE responds with a space launches list
        And I wait
        Then I see {'Falcon 9 Block 5 | SpX USCV-2 (NASA Crew Flight 2)'} text

    Scenario: Space launches list is not loaded
        Given the BE responds with an error
        And I wait
        Then I see {'💔\nSomething went wrong'} text
    
    