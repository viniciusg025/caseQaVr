const {When, Then, Given} = require("@badeball/cypress-cucumber-preprocessor")
const comprarOnlinePage = require('../../pages/comprarOnlinePage')

//step que chama o metodo para acessar o site
Given("acesso o site", () => {
    comprarOnlinePage.acessarUrl()
})

//step que chama o metodo de adicionar o cartao Auto ao carrinho de compras
When("adiciono o cartao auto ao carrinho de compras", () => {
    comprarOnlinePage.adicionarCartaoAutoAoCarrinho()
})

//step que chama o metodo de validar que o cartao foi adicionado ao carrinho de compras
Then("valido que o produto foi adicionado com sucesso ao carrinho", () => {
    comprarOnlinePage.validarSucessoAoAdicionarOProduto()
})