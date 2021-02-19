Algoritmo "Sistema para biblioteca"

var

   cpf,nome,exclusao,endereco,livro, autor, editora, ano, fornecedor, genero: vetor [1..20] de caracter
   telefone, emprestado:vetor [1..20] de inteiro
   x,y, j, possivel,z: inteiro
   opcao: inteiro

procedimento MenuP

inicio
   Limpatela
   Escreval (" **")
   Escreval (" * MENU PRINCIPAL *")
   Escreval (" **")
   Escreval ("")
   escreval ("#1 - Cadastrar livro")
   escreval ("#2 - Buscar livro ")
   escreval ("#3 - Listar livro")
   escreval ("#4 - Excluir livro")
   escreval ("#5 - Emprestar livro")
   escreval ("#6 - Devolver livro")
   escreval ("#7 - Cadastrar Leitor")
   escreval ("#8 - Buscar leitor")
   escreval ("#9 - Excluir leitor")
   escreval ("#10 - Sair")
   Escreval ("")
   Escreva ("Entre com a sua opção: ")
   leia (opcao)
   escolha opcao
   caso 1
      cadastrolivro
   caso 2
      buscarlivro
   caso 3
      listarlivro
   caso 4
      excluirlivro
   caso 5
      emprestarlivro
   caso 6
      devolverlivro
   caso 7
      cadastroleitor
   caso 8
      buscarleitor
   caso 9
      excluirleitor
   caso 10
      sair
   outrocaso
      MenuP
   fimescolha
fimprocedimento


procedimento cadastrolivro

inicio
   limpatela
   Escreval ("")
   Escreval (" *")
   escreval (" * Cadastro Nº",x, " *")
   Escreval (" *")
   escreval ("")
   escreva ("Nome do livro: ")
   leia (livro[x])
   escreva ("Nome do autor: ")
   leia (autor[x])
   escreva ("Editora: ")
   leia (editora[x])
   escreva ("Entre com o ano do livro: ")
   leia (ano[x])
   emprestado[x] <- 0
   x <- x + 1
   MenuP
fimprocedimento


procedimento listarlivro

var
   i: inteiro
   c: caracter
inicio
   limpatela
   Escreval (" **")
   Escreval (" * LISTAR *")
   Escreval (" **")
   para i de 1 ate x faca
      escreval ("Nome do livro : ", livro[i])
      escreval ("Nome do autor : ", autor[i])
      escreval ("Nome da editora : ", editora[i])
      escreval ("Ano de puplicacao : ", ano[i])
      Escreval ("Fornecedor : ", fornecedor[i])
      Escreval ("Gênero: ", genero[i])
      se emprestado[i] = 0 entao
         escreval("Disponível para retirada")
      senao
           escreval("Emprestado")
      fimse
      escreval ("")
   fimpara
   escreval ("Pressione |ENTER| para continuar")
   leia (C)
   MenuP
fimprocedimento


procedimento buscarlivro
var
   i, a : inteiro
   busca, c : caracter
inicio
   limpatela
   Escreval (" **")
   Escreval (" * BUSCAR *")
   Escreval (" **")
   escreva ("Entre com o nome do livro: ")
   leia (busca)
   a <- 0
   para i de 1 ate (x-1) faca
      se (livro[i] = busca) entao
         a <- i
      fimse
   fimpara

   se a> 0 então
      Escreval (" *")
      Escreval ("Nome do livro : ", livro[a])
      Escreval ("Nome do autor : ", autor[a])
      Escreval ("Nome da editora : ", editora[a])
      Escreval ("Ano de publicação : ", ano[a])
      Escreval ("Fornecedor : ", fornecedor[a])
      Escreval ("Gênero: ", genero[a])
      se emprestado[a] = 0 entao
         escreval("Disponível para retirada")
      senao
           escreval("Emprestado")
      fimse
      Escreval (" *")
      Escreval ("")
   senao
      escreval ("O livro ", busca, " não foi encontrado em nosso banco de dados")
   fimse
   escreval ("Pressione |ENTER| para continuar")
   leia (c)
   MenuP
fimprocedimento


procedimento excluirlivro
var
   i, a : inteiro
   busca, c : caracter
inicio
   limpatela
   Escreval (" **")
   Escreval (" * EXCLUIR***")
   Escreval (" **")
   escreva ("Entre com o nome do livro a ser excluído: ")
   leia (busca)
   a <- 0
   para i de 1 ate (x-1) faca
      se (livro[i] = busca) entao
         a <- i
         x<-i
      fimse
   fimpara
   escreval (" Exclusão realizada com sucesso")
   escreval ("Pressione |ENTER| para continuar")
   leia (c)
   MenuP
fimprocedimento


procedimento emprestarlivro
var
   i, a : inteiro
   busca, c : caracter
inicio
   limpatela
   Escreval (" **")
   Escreval (" EMPRÉSTIMO")
   Escreval (" **")
   possivel <- 0
   i <- 1
   j <- 1
   escreva ("Entre com o nome do livro a ser emprestado: ")
   leia (busca)
   enquanto ((i < 20) e (possivel = 0)) faca
        se (livro[i] = busca) entao
             a <- i
             escreva("Entre com o leitor: ")
             leia (busca)
             enquanto ((j < 20) e (possivel = 0)) faca
                      se (nome[j] = busca) entao
                         se (emprestado[a] = 0) entao
                            emprestado[a] <- 1
                            possivel <- 4
                         fimse
                      senao
                           j <- j+1
                      fimse
             fimenquanto
             se j = 20 entao
                possivel <- 2
             fimse
        senao
             i <- i+1
        fimse
   fimenquanto
   se i = 20 entao
      possivel <- 1
   fimse
   se possivel = 1 entao
      escreval("Impossível emprestar. Livro não cadastrado")
   fimse
   se possivel = 2 entao
      escreval("Impossível emprestar. Leitor não cadastrado")
   fimse
   se possivel = 3 entao
      escreval("Impossível emprestar. Livro não disponível")
   fimse
   se possivel = 4 entao
      escreval ("Emprestado com sucesso")
   fimse

   escreval ("")
   escreval ("Pressione |ENTER| para continuar")
   leia (c)
   MenuP
fimprocedimento

procedimento devolverlivro
var
   i, a, naoAchei, atraso: inteiro
   busca, c : caracter
inicio

      limpatela
      Escreval ("")
      Escreval (" *")
      escreval (" DEVOLUÇÃO ")
      Escreval (" *")
      escreval (" Digite o título a ser devolvido ")
      leia(busca)

      i <- 1
      naoAchei <- 0
      enquanto (i < 20) e (naoAchei = 0) faca
            se (livro[i] = busca) entao
                se (emprestado[i] = 1) entao
                   emprestado[i] <- 0

                   escreval ("este livro esta sendo devolvido com atraso?")
                   escreval ("1- sim")
                   escreval ("2- não")

                   leia (atraso)
                        se atraso = 1 entao
                           escreval (" o leitor deverá pagar uma multa de 10 reais")
                        fimse
                        se atraso = 2 entao
                           escreval (" este livro pode ser devolvido")
                           escreval("Livro devolvido com sucesso")
                        fimse

                senao
                     escreval ("O livro não está emprestado")

                fimse
                naoAchei <- 1
             senao
                  i <- i+1
             fimse
      fimenquanto
      se (i = 20) e (naoAchei = 0) entao
         escreval ("Acho que você digitou o nome do livro errado")
      fimse
       escreval ("")
   escreval ("Pressione |ENTER| para continuar")
   leia (c)
   MenuP
fimprocedimento


procedimento cadastroleitor

inicio
   limpatela
   Escreval ("")
   Escreval (" *")
   escreval (" * Cadastro Nº",y, " *")
   Escreval (" *")
   escreval ("")
   escreva ("Nome: ")
   leia (nome[y])
   escreva ("CPF: ")
   leia (CPF[y])
   escreva ("Endereço: ")
   leia (endereco[y])
   escreva ("Telefone ")
   leia (telefone[y])
   y <- y + 1
   MenuP
fimprocedimento


procedimento buscarleitor
var
   i, a : inteiro
   busca, c : caracter
inicio
   limpatela
   Escreval (" **")
   Escreval (" * BUSCAR LEITOR*")
   Escreval (" **")
   escreva ("Entre com o nome do leitor: ")
   leia (busca)
   a <- 0
   para i de 1 ate (x-1) faca
      se nome[i] = busca entao
         a <- i
      fimse
   fimpara

   se a> 0 então
      Escreval (" *")
      Escreval ("Nome: ", nome[a])
      Escreval ("CPF: ", cpf[a])
      Escreval ("Endereço: ", endereco[a])
      Escreval ("Telefone: ", telefone[a])
      Escreval (" *")
      Escreval ("")
   senao
      escreval ("O leitor", busca, " não foi encontrado em nosso banco de dados")
   fimse
   escreval ("Pressione |ENTER| para continuar")
   leia (c)
   MenuP
fimprocedimento
procedimento excluirleitor
var
   i, a : inteiro
   busca, c : caracter
inicio
   limpatela
   Escreval (" **")
   Escreval (" * EXCLUIR***")
   Escreval (" **")
   escreva ("Entre com o nome do leitor: ")
   leia (busca)
   a <- 0
   para i de 1 ate (x-1) faca
      se nome[i] = busca entao
         a <- i
      fimse
   fimpara

   se a> 0 então
      escreval (" Exclusão realizada com sucesso")
      escreval ("Pressione |ENTER| para continuar")
      leia (c)
      MenuP
fimprocedimento



procedimento sair
inicio
   limpatela
fimprocedimento

inicio
   //*
   //atribuir valor para X  e Y
   x<- 1
   y<- 1
   z<- 1
   //*

   //MENU PRINCIPAL
   MenuP
fimalgoritmo