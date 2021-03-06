Feature: User should have the ability to edit author of
  As an publisher/journalist
  In order to keep be serve my purpose
  I would like to be able to edit the author name of an article

    Given following user exist
      | email                 | role       |
      | visitor@email.com     | visitor    |
      | subscriber@email.com  | subscriber |
      | author@email.com      | author     |
      | admin@email.com       | admin      |

    And the following articles exist
      | title              | body                      |
      | Kalles tittel      | Kalle body |

    And the following categories exist
      | name    |
      | Fashion |
      | Tech    |

    And the following categories have been added to the articles
      | title                | category    |
      | Kalles tittel        | Tech        |

    And I am logged in as 'admin@email.com'

  Scenario: User edits a article
    Given I am on the "Jade loves cookies" article page
    Then show me the page
    When I click on "Edit Article"
    And I fill in "Title" with "Holger is the best"
    And I fill in "Content" with "Dreamteam for the win!"
    When I select "Fashion" from "Categories"
    And I click on "Submit Changes"
    Then I should be on the "Holger is the best" page
    And I should see "Holger is the best"
    And I should see "Dreamteam for the win!"

  # Scenario: User edits a article and leave title empty
  #   Given I am on the "Jade loves cookies" article page
  #   When I click on "Edit Article"
  #   And I fill in "Title" with ""
  #   And I fill in "Content" with "Dreamteam for the win!"
  #   And I click on "Submit Changes"
  #   And I should see "Title can't be blank"
  #
  # Scenario: User edits a article and leave content empty
  #   Given I am on the "Jade loves cookies" article page
  #   When I click on "Edit Article"
  #   And I fill in "Title" with "Jade loves cookies"
  #   And I fill in "Content" with ""
  #   And I click on "Submit Changes"
  #   And I should see "Body can't be blank"
  #
  # Scenario: User edits a article and leave both title & content empty
  #   Given I am on the "Jade loves cookies" article page
  #   When I click on "Edit Article"
  #   And I fill in "Title" with ""
  #   And I fill in "Content" with ""
  #   And I click on "Submit Changes"
  #   And I should see "Title can't be blank Body can't be blank"
  #
  # Scenario: User edits a article and adds already existing category
  #   Given I am on the "Jade loves cookies" article page
  #   When I click on "Edit Article"
  #   And I fill in "Title" with "Holger is the best"
  #   And I fill in "Content" with "Im a h1 person ;)"
  #   And I select "Tech" from "Categories"
  #   And I select "Fashion" from "Categories"
  #   And I click on "Submit Changes"
  #   Then I should be on the "Holger is the best" page
  #   And I should see 2 "Tech"
