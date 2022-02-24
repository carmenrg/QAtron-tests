import { italic } from "colorette";

/// <reference types ="cypress" / >

it('google test', function() {
    cy.visit('https://qatron.dosium.dev/')
    cy.get('.chakra-button').click()
    cy.get('#email').type('carmen@helixcentre}.com{enter}')
    cy.get('#password').type('CypressRocks{enter}')
})