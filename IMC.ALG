Algoritmo "imc"

Var
// Seção de Declarações das variáveis 
imc, massa, altura: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
      escreval ("qual seu peso? ")
      leia (massa)
      escreval ("qual sua altura?" )
      leia (altura )
      imc <- massa/( altura * altura )
      escreval (" seu imc é: ", imc )

Fimalgoritmo