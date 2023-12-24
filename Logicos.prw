#INCLUDE "Protheus.ch"


/*/(Protheus.doc) Tipo de dados e operadores l�gicos
Fun��o : Analista de Sistemas
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

    
    // "E" l�gico - Tem que ser tudo .T. (Verdadeiro) pra ser verdadeiro
    lResult         := lTeste1 .And. lTeste2 .And. lTeste3 // .F.

    // "OU" l�gico - Tem que ser tudo .F. (Falso) para ser falso
    lResult         := lTeste1 .Or. lTeste2 .Or. lTeste3

    // "NAO" l�gico - Inverte o valor l�gico
    lResult         := .Not. lTeste1 // Ou ! 
    lResult         := ! (UPPER("carros") == "CARros")

    // "E" com "OU" 
    lResult         := lTeste1 .And. (lTeste2 .Or. lTeste3)
    //lAprov          := ! lBloqueado .And. (nSaldo > nVlrPed .Or. cRisco == "A") 
    // Se o cliente n�o est� bloqueado(.T.) e � risco A ou tem saldo maior ;
    // ou seja, se dentro do parenteses houver um (.T.), aprovar o pedido. Se estiver bloqueado (.F.) ou n�o for risco A nem tiver saldo, n�o aprovar.
    


RETURN
