#INCLUDE "Protheus.ch"


/*/(Protheus.doc) Tipo de dados e operadores lógicos
Função : Analista de Sistemas
@author Kassio B.
Since 24/12/2023
@version 12 superior
/*/


User Function Logicos()

    Local lResult   := .T.
    Local lTeste1   := .T.
    Local lTeste2   := .F.
    Local lTeste3   := .T.

    
    lResult         := .F.
    lResult         := 1 <= 2
    lResult         := "A" > "B"
    lResult         := CToD("21/12/2023") < Date()

    
    // "E" lógico - Tem que ser tudo .T. (Verdadeiro) pra ser verdadeiro
    lResult         := lTeste1 .And. lTeste2 .And. lTeste3 // .F.

    // "OU" lógico - Tem que ser tudo .F. (Falso) para ser falso
    lResult         := lTeste1 .Or. lTeste2 .Or. lTeste3

    // "NAO" lógico - Inverte o valor lógico
    lResult         := .Not. lTeste1 // Ou ! 
    lResult         := ! (UPPER("carros") == "CARros")

    // "E" com "OU" 
    lResult         := lTeste1 .And. (lTeste2 .Or. lTeste3) // Isolar a sentença pra lógica ficar correta
    //lAprov          := ! lBloqueado .And. (nSaldo > nVlrPed .Or. cRisco == "A") 
    // Se o cliente não está bloqueado(.T.) e é risco A ou tem saldo maior ;
    // ou seja, se dentro do parenteses houver um (.T.), aprovar o pedido. Se estiver bloqueado (.F.) ou não for risco A nem tiver saldo, não aprovar.
    


RETURN
