# working through https://semaphoreci.com/community/tutorials/getting-started-with-behavior-testing-in-python-with-behave
Feature: The dealer for the game of 21

Scenario: Deal initial cards
    Given a dealer
    When the round starts
    Then the dealer gives himself two cards