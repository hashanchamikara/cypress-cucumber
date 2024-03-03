const {
  Given,
  When,
  Then,
} = require("@badeball/cypress-cucumber-preprocessor");
Given("I am on the login page", () => {
  cy.visit("/");
});

When(
  "I enter my username {string} and password {string}",
  (username, password) => {
    cy.get('input[id="username"]').type(username);
    cy.get('input[id="password"]').type(password);
  },
);

When("I click the login button", () => {
  cy.get('button[type="submit"]').click();
});

Then("I should be logged in successfully", () => {
  cy.url().should("include", "/dashboard");
  cy.get(".container").contains("Dashboard").should("be.visible");
});

Then("I should see an error message", () => {
  cy.get(".error-message").should("be.visible");
});
