Algoritmo "Projeto m�dulo 2 - Recode Pro"
// Disciplina   : [Linguagem e L�gica de Programa��o] 
// Professor   : Marcelo Vasques


Var
// Se��o de Declara��es das vari�veis
opcaoMenu : caractere
clientes : vetor [0..9] de caractere
destinos : vetor [0..9] de caractere

procedimento mostrarMenu()
inicio
      escreval(" ")
      Escreval("1- Cadastrar Cliente.")
      Escreval("2- Cadastrar Destino.")
      Escreval("3- Pesquisar Cliente.")
      Escreval("4- Pesquisar Destino.")
      Escreval("5- Para Sair.")
            escreval(" ")
            
      leia(opcaoMenu)
fimprocedimento

procedimento cadastrarCliente()
var
   i : inteiro
inicio

   para i de 0 ate 9 faca
        se clientes[i] = "" entao
           escreval("Nome:")
           leia(clientes[i])
           escreval(" ")
           interrompa
        fimse
   fimpara
fimprocedimento

procedimento cadastrarDestino()
var
   i : inteiro
inicio

   para i de 0 ate 9 faca
        se destinos[i] = "" entao
           escreval("Nome do destino:")
           leia(destinos[i])
           escreval(" ")
           interrompa
        fimse
   fimpara
fimprocedimento

procedimento pesquisarCliente()
var
   i : inteiro
   nomeAPesquisar : caractere
   indice : inteiro
inicio

   escreval("Informe o nome do cliente a ser achado:")
   leia(nomeAPesquisar)

   para i de 0 ate 9 faca
        se clientes[i] = nomeAPesquisar entao
           indice <- i
           interrompa
        fimse
   fimpara
   se indice = -1 entao
      escreval("Cliente n�o cadastrado!")
   senao
      escreval("Cliente encontrado na posi��o: ", indice)
      escreval("Nome do cliente: ", clientes[indice])
      escreval(" ")
   fimse
fimprocedimento

procedimento pesquisarDestino()
var
   i : inteiro
   nomeAPesquisar : caractere
   indice : inteiro
inicio

   escreval("Informe o nome do destino a ser achado:")
   leia(nomeAPesquisar)

   para i de 0 ate 9 faca
        se destinos[i] = nomeAPesquisar entao
           indice <- i
           interrompa
        fimse
   fimpara
   se indice = -1 entao
      escreval("Destino n�o cadastrado!")
   senao
      escreval("Destino encontrado na posi��o: ", indice)
      escreval("Nome do Destino: ", destinos[indice])
      escreval(" ")
   fimse
fimprocedimento



Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
escreval("Bem vindo(a)a Ag�ncia Rota de F�rias!")
repita
      mostrarMenu()
      escolha opcaoMenu
          caso "1"
               cadastrarCliente()
          caso "2"
               cadastrarDestino()
          caso "3"
               pesquisarCliente()
          caso "4"
               pesquisarDestino()
          outrocaso
             escreval("Opcao inv�lida")
     fimescolha
    ate opcaoMenu = "5"

Fimalgoritmo