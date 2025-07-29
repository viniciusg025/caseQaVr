class comprarOnlinePage {

    //metodo acessar url principal do site
    acessarUrl(){
        cy.visit("https://www.vr.com.br")
    }

    //metodo para adicionar o cartao Auto ao carrinho de compras
    adicionarCartaoAutoAoCarrinho(){
        cy.xpath("(//a[contains(text(),' Compre online ')])[2]").should('be.visible').click()
        cy.get('#beneficios').should('be.visible').click()
        cy.get('#submitprodutoideal').click()

    //direciona para a tela dos cartões, adiciona a quantidade e o valor.
        cy.visit('https://loja.vr.com.br/carrinho/beneficios')
        cy.origin('https://loja.vr.com.br/carrinho/beneficios', () => {
            cy.get('#adicionar-produto-28').should('be.visible').click()
            cy.get('#produto-auto-quantidade').clear().type('10')
            cy.get('#produto-auto-valor').type('3000')
        })
        
       
    }

    //valida que o cartao Auto foi adicionado com sucesso ao carrinho de compras
    validarSucessoAoAdicionarOProduto(){
        cy.origin('https://loja.vr.com.br/carrinho/beneficios', () => {
            cy.get('.product-row').contains('Auto').should('be.visible')
            cy.screenshot('cartao auto adicionado ao carrinho')
        
        })
    }
}
module.exports = new comprarOnlinePage();