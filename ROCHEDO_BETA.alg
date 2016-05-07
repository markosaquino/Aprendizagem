algoritmo "XYZ LTDA SUPRIME"
// Função : Controle
// Autor :  Marcos Aquino
// Data : 20/10/2015
// Seção de Declarações
var           //GLOBAL
abertura, mesa, pedido,x,Q,n, saida : inteiro
nome, resp, exped, fechamento,ConfMesa, sair1, sair2: caractere
ValorFinal,ComgFinal, SomaComgF: real
p,pg :vetor [1..20] de real
Valor,Comg: vetor [0..20] de real


//######### PROCEDIMENTOS #############



//###### CADASTRO GARÇON
procedimento CadGarcon()
inicio

Escreval("---------------------------------------------------")
Escreval("      Bem vindo ao menu de cadastro do XYZ LTDA    ")
Escreval("---------------------------------------------------")
Escreval()
Escreva ("Por favor, digite seu nome: ")
Leia (nome)
limpatela
abertura()
Escreval()
Escreval("Bem vindo(a) ", nome,"!!! Obrigado pelo seu cadastro.")

fimprocedimento


//#### FIM CADASTRO GARÇON

//##### Leitura da mesa ######

procedimento LerMesa()
inicio

repita
   Escreval("Você deseja atender uma nova mesa [s/n]?")
   Leia (ConfMesa)

   // Bloco condicional para Confirmar uma nova mesa
   // Se [n] volta ao menu principal
   Se (ConfMesa = "s") entao
      Limpatela
      CadMesa()
      cardapio()
      MenuMesa()

   fimse


ate  (ConfMesa = "n")

fimprocedimento

//#### FIM Leitura da mesa #####

// ##### CADASTRO MESA ######
procedimento CadMesa()
inicio
abertura()
Escreval()
Escreval ("Por favor Sr(a)",nome," digite o Nº da mesa a ser atendida.")
Escreva ("Nº")
Leia (mesa)

fimprocedimento

// ######## FIM CADASTRO MESA ###


//### OPÇÕES PARA ESCOLHA DO CASO

procedimento MenuEscolha()
inicio

Escreval ("             RESTAURANTE XYZ LTDA                   ")
Escreval ("----------------------------------------------------")
Escreval ("Digite [1] e tecle enter para se cadastrar          ")
Escreval ("Digite [2] e tecle enter para atender uma mesa      ")
Escreval ("Digite [3] e tecle enter para exibir sua comissão   ")
Escreval ("Digite [4] e tecle enter para encerrar a aplicação  ")
Escreval ("----------------------------------------------------")
Leia (abertura)

fimprocedimento
//##### FIM PARA OPÇÕES do CASO



//##### APRENSETAÇÃO boas vindas

procedimento abertura()        // Procedimento para abertura padrão
inicio
Escreval("---------------------------------------------------")
Escreval("                RESTAURANTE XYZ LTDA               ")
Escreval("---------------------------------------------------")
fimprocedimento


//#### FIM APRESENTAÇÃO


//########## MOSTRA CARDAPIO
procedimento cardapio()
inicio
Escreval("---------------------------------------------------")
Escreval ("Bem vindo ao MENU CARDAPIO, mesa:", mesa," em atendimento.")
Escreval("---------------------------------------------------")

Escreval("Cod [1] Cerveja garrafa de 600ml R$8,00 5%")
Escreval("Cod [2] Refrigerante lata R$3,00 5%")
Escreval("Cod [3] Água mineral garrafa de 300 ml R$3,00 7%")
Escreval("Cod [4] Suco (abacaxi, acerola, bacuri, cupuaçu, goiaba, maracujá) R$5,00 10%")
Escreval("Cod [5] Suco com leite R$7,00 10%")
Escreval("Cod [6] Água de coco R$3,00 10%")
Escreval("Cod [7] Peixada R$60,00 10% ")
Escreval("Cod [8] Camarão no alho e óleo R$90,00 15%")
Escreval("Cod [9] Peixe escabeche R$75,00 10% ")
Escreval("Cod [10] Caranguejada R$60,00 12%  ")
Escreval("Cod [11] Peixe frito (pescada) 80,00 15%")
Escreval("Cod [12] Peixe frito (peixe pedra) R$65,00 15%  ")
Escreval("Cod [13] Torta de camarão com arroz de cuxá R$15,00 10%")
Escreval("Cod [14] Casquinha de caranguejo R$12,00 10% ")
Escreval("Cod [15] Camarão frito (tira gosto) R$30,00 15%")
Escreval("Cod [16] Peixe frito (tara gosto) R$30,00 15% ")
Escreval("Cod [17] Sobremesas (creme de bacuri, cupuaçu, maracujá) R$12,00 15%")
Escreval("Cod [18] Pudim de leite R$11,00 15%")
Escreval("Cod [19] Sorvete (bola) R$4,00 15%   ")
Escreval("Cod [20] Charlote R$12,00 15% ")
fimprocedimento

//###### FIM MOSTRA CARDAPIO


//########## CALCULO DA MESA

procedimento MenuMesa()
inicio
repita
   limpatela


   cardapio () // Chamada do PROCEDIMENTO CARDAPIO

   Escreval()

   // ESCOLHA DO PEDIDO
   Escreva("Qual o codigo do pedido? ")
   Leia (x)   // [x] é o codigo da variavel P
   Escreva("Quantidade: ")
   Leia (Q) // Quantidade do pedido


   Valor[n] <- (Q*p[x])
   Comg[n]  <- (Q*pg[x])

   ValorFinal <- Valor[n] + ValorFinal
   ComgFinal <- Comg[n]   + ComgFinal
   Escreval()
   Escreval("Valor do pedido: R$", Valor[n])
   Escreval("Sua Comissão: ", Comg[n])

   n<- n + 1



   Escreval()
   Escreva("Deseja mais alguma coisa [S/N]? ")
   Leia (resp)
ate(resp="n")

limpatela
abertura()
Escreval ("Fechando a conta")
Escreval()
Escreval("Valor final da conta: R$", ValorFinal)
Escreval("Parabéns Sr(a) ",nome, ", sua comissão da mesa é: ", ComgFinal,"!")
Escreval()
SomaComgF <- (ComgFinal + SomaComgF)
fimprocedimento

//######### FIM CALCULO MESA


//####### FIM PROCEDIMENTOS ########

inicio // MAIN

//############## VALORES do produto ########
p[1] <- (8.00)
p[2] <- (3.00)
p[3] <- (3.00)
p[4] <- (5.00)
p[5] <- (7.00)
p[6] <- (3.00)
p[7] <- (60.00)
p[8] <- (90.00)
p[9] <- (75.00)
p[10]<- (60.00)
p[11]<- (80.00)
p[12]<- (65.00)
p[13]<- (15.00)
p[14]<- (12.00)
p[15]<- (30.00)
p[16]<- (30.00)
p[17]<- (12.00)
p[18]<- (11.00)
p[19]<- (4.00)
p[20]<- (12.00)

//############## VALORES COMISSÃO #####################
pg[1] <- (8.00*5)/100
pg[2] <- (3.00*5)/100
pg[3] <- (3.00*7)/100
pg[4] <- (5.00*10)/100
pg[5] <- (7.00*10)/100
pg[6] <- (3.00*10)/100
pg[7] <- (60.00*10)/100
pg[8] <- (90.00*15)/100
pg[9] <- (75.00*10)/100
pg[10]<- (60.00*12)/100
pg[11]<- (80.00*15)/100
pg[12]<- (65.00*15)/100
pg[13]<- (15.00*10)/100
pg[14]<- (12.00*10)/100
pg[15]<- (30.00*15)/100
pg[16]<- (30.00*15)/100
pg[17]<- (12.00*15)/100
pg[18]<- (11.00*15)/100
pg[19]<- (4.00*16)/100
pg[20]<- (12.00*15)/100


//######### FIM VALORES ###########


//########## Inicio dos Comandos #########

repita   //Loop inicio
   limpatela
   MenuEscolha()  //Menu de Opções

   Escolha (abertura)
   caso 1
      limpatela
      CadGarcon() //Cadastro do garçon
      Escreval()
      LerMesa()  //Verificação se deseja atender uma nova mesa

   caso 2
      limpatela
      CadMesa()  //Cadastro do N° da mesa em atendimento
      cardapio() // Cardapio
      MenuMesa() // Calculo dos valores dos pedidos e da comissão

      LerMesa() //Verificação se deseja atender uma nova mesa

   caso 3

      limpatela
      repita
         abertura()
         Escreval()
         Escreval("Olá", nome," sua comissão total até este extato momento é:")
         Escreval()
         Escreval (SomaComgF)


         Escreval("Para voltar ao menu principal, digite [s].")
         leia (sair1)
      ate sair1 = "s"



   caso 4
      limpatela
      abertura()
      Escreval(" Aplicação Encerrada, até logo ", nome,".")
   fimalgoritmo     //Saída do programa


outrocaso
   limpatela
   repita

      abertura()
      Escreval( "COMANDO INVALIDO.")
      Escreval()
      Escreval( "O numero", abertura," não é uma opção.")
      Escreval()
      Escreval("Digite [s] e tecle enter para uma nova tentativa.")
      Leia (sair2)
   ate sair2 = "s"

Fimescolha

ate (saida = 1)  //Loop fim

//######## Fim Comandos ########
fimalgoritmo
