@tag
Feature: Cadastrar Usuarios na base de dados

  @tag1
  Scenario Outline: Usuario chama API para cadastrar novo Usuario na base de dados
    Given que o Usuario insere "<Nome>", "<Cpf>", "<Logradouro>", <Numero>, "<Complemento>", "<Bairro>", "<Cidade>", "<Estado>", "<ddd>" e "<Telefone>" na Api
    Then a API efetua o cadastro do Usuario com sucesso
    
    Examples: 
      | Nome          | Cpf         | Logradouro     | Numero  | Complemento | Bairro              | Cidade   | Estado    | ddd | Telefone  |
      | Leandro Lucas | 77788876543 | Rua Teste      | 333     | Casa        | Novo Mundo          | Valinhos | SP        |  22 | 900008765 |
    
  @tag2
  Scenario Outline: Usuario chama API para cadastrar Usuario com CPF duplicado na base de dados
    Given que o Usuario insere CPF "<Cpf>" duplicado
    Then a API nao efetua o cadastro do Usuario com CPF "<Cpf>" duplicado
    
    Examples: 
      | Cpf         |
      | 77788876543 |
      
  @tag3
  Scenario Outline: Usuario chama API para cadastrar Usuario com Telefone duplicado na base de dados
    Given que o Usuario insere DDD "<ddd>" e Telefone "<Telefone>" duplicados
    Then a API nao efetua o cadastro do Usuario com DDD "<ddd>" e Telefone "<Telefone>" duplicados
    
    Examples: 
      | ddd | Telefone  |
      |  22 | 900008765 |