Algoritmo "imc"

Var
// Se��o de Declara��es das vari�veis 
imc, massa, altura: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
      escreval ("qual seu peso? ")
      leia (massa)
      escreval ("qual sua altura?" )
      leia (altura )
      imc <- massa/( altura * altura )
      escreval (" seu imc �: ", imc )

Fimalgoritmo