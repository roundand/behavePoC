# working through https://semaphoreci.com/community/tutorials/getting-started-with-behavior-testing-in-python-with-behave
Feature: The dealer for the game of 21

Scenario: Deal initial cards
    Given a dealer
    When the round starts
    Then the dealer gives himself two cards

Scenario Outline: Get hand total
  Given a <hand>
  When the dealer sums the cards
  Then the <total> is correct

  Examples: Hands
  | hand          | total |
  | 5,7           | 12    |
  | 5,Q           | 15    |
  | Q,Q,A         | 21    |
  | Q,A           | 21    |
  | A,A,A         | 13    |