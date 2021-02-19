Algoritmo "Sistema para controle de bilheteria"

Var
Sala:vetor [1..10,1..30] de inteiro
i,j, rodando, menu, tipoBilhete, totalDia, totalBilheteria:inteiro
posicaox, posicaoy, meia, inteira: inteiro


inicio
   rodando <- 0
      enquanto rodando = 0 faca

               escreval("Digite uma opção: ")
               escreval("1 - limpar sala")
               escreval("2 - mostrar sala")
               escreval("3 - vender bilhete")
               escreval("4 - totalizar bilheteria")
               escreval("5 - totalizar dia")
               escreval("6- finalizar programa")
               leia(menu)


               se menu = 1 entao
                  para i de 1 ate 10 faca
                       para j de 1 ate 30 faca
                            Sala[i,j] <- 0
                       fimpara
                  fimpara
               fimse

               se menu = 2 entao
                    para i de 1 ate 10 faca
                         para j de 1 ate 30 faca
                              se Sala[i,j] = 0 entao
                                 escreva("O")
                              fimse
                              se Sala[i,j] <> 0 entao
                                se Sala[i,j]= inteira entao
                                 escreva("X")
                                fimse
                                se Sala[i,j]= meia entao
                                  escreva("M")
                                fimse
                              fimse
                              escreva(" ")
                         fimpara
                         escreval()
                    fimpara
                 fimse


                se menu = 3 entao
                  posicaox <- 50
                  posicaoy <- 50
                  enquanto posicaox > 30 faca
                           escreval("Digite a posição x da cadeira")
                           leia(posicaox)
                  fimenquanto
                  enquanto posicaoy > 10 faca
                           escreval("Digite a posição y da cadeira")
                           leia(posicaoy)
                  fimenquanto

                  se Sala[posicaox,posicaoy] = 0 entao
                  escreval("Digite 0 para inteira e 1 para meia")
                  leia(tipoBilhete)

                     se tipoBilhete = 0 entao
                        Sala[posicaox,posicaoy] <- 1
                        inteira <- Sala[posicaox,posicaoy]
                     fimse

                     se tipoBilhete = 1 entao
                        Sala[posicaox,posicaoy] <- 2
                        meia <- Sala[posicaox,posicaoy]
                     fimse

                     senao
                          escreval("Já foi vendido... tente outra cadeira")
                     fimse

               fimse



               se menu = 4 entao
                  totalBilheteria <- 0
                  para i de 1 ate 10 faca
                       para j de 1 ate 30 faca
                            se Sala[i,j] = 1 entao
                               totalBilheteria <- totalBilheteria + 30
                            fimse
                            se Sala[i,j] = 2 entao
                               totalBilheteria <- totalBilheteria + 15
                            fimse
                       fimpara
                  fimpara
                  escreval(" o total desta bilheteria foi: ", totalBilheteria)
                   para i de 1 ate 10 faca
                       para j de 1 ate 30 faca
                            Sala[i,j] <- 0
                       fimpara
                  fimpara
                  totalDia <- totalDia + totalBilheteria
               fimse


               se menu = 5 entao
                  escreval(" o total do dia foi", totalDia)
               fimse


               se menu = 6 entao
                  rodando <- 1
               fimse
     fimenquanto

Fimalgoritmo