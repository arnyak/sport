Feature: Have information on sport in Guinea
  In order to send comments on publications
  As a visitor
  I want to consult the publications

  Background:
    Given the following articles:
      | title  | content                | publish | on_home_page |
      | first  | this is publication #1 | true    | true         |
      | second | this is publication #2 | false   | false        |
      | third  | this is publication #3 | true    | true         |
      | fourth | this is publication #4 | false   | true         |
    And the following footballers:
      | first_name | last_name | born_at    | city_born_in  | country_born_in |
      | fpname     | fpsurname | 1980-02-23 | Conakry       | Guinea          |
      | spname     | spsurname | 1990-02-23 | Conakry       | Guinea          |
      

  Scenario: Landing
    Given I am on the home page
    Then I should see "first"
    Then I should see "third"

