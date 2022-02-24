import { italic } from "colorette";

/// <reference types ="cypress" / >

it('google test', function() {
    cy.visit('https://qatron.dosium.dev/')
    cy.get('.chakra-button').click()  
})