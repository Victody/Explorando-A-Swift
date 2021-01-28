import UIKit

// *** EXERCÃCIO 01 ***
/*
    Perguntei Ã  Alexa se devia levar um casaco
    Ela respondeu: NÃ£o, Carlos, pode ir com uma roupa leva hoje
    Os critÃ©rios que ela pode ter usado sÃ£o os seguintes:
    - Se a temperatura estiver abaixo de 21ÂºC, ela recomenda
        levar um casaco
    - Se a temperatura estiver igual ou acima de 21ÂºC, ela recomenda
        usar roupas leves
    ATENÃ‡ÃƒO: Vamos pressupor que jÃ¡ temos a temperatura calculado
*/
var temperatura = 12

print("Questão 1 Resposta\n")
if temperatura >= 21 {
    print("Pode vestir roupas leves hoje\n")
} else {
    print("Melhor levar um casaco\n")
}

// *** EXERCÃCIO 02 ***
/*
    Os engenheiros de IA da Amazon inseriram mais uma condiÃ§Ã£o no algoritmo
    da Alexa:
    - Se a temperatura estiver abaixo de 12ÂºC, ela questiona se vocÃª precisa
        mesmo sair de casa, pois estÃ¡ muito frio
    Como fica o nosso if neste caso?
*/

//  EspaÃ§o para codificaÃ§Ã£o da soluÃ§Ã£o
print("Questão 2 Resposta\n")
if temperatura >= 21 {
    print("Pode vestir roupas leves hoje\n")
} else if temperatura <= 12{
    print("Você precisa mesmo sair de casa? Está muito frio lá fora!\n")
}else {
    print("Melhor levar um casaco\n")
}
// Fim da codificaÃ§Ã£o

// *** EXERCÃCIO 03 ***
/*
    Avaliar mÃ©dia para aprovaÃ§Ã£o do aluno
    Se mÃ©dia de (nota1 + nota2) for maior ou igual a 6.0 (seis) o aluno estarÃ¡ aprovado
    PorÃ©m o o nÃºmero de faltas nÃ£o poderÃ¡ ser superior a 25
    Caso contrÃ¡rio, o aluno estarÃ¡ reprovado
*/
print("Questão 3 Resposta\n")
let studentGrade1: Double = 7.0
let studentGrade2: Double = 5.0
let media = (studentGrade1 + studentGrade2) / 2
let abscense = 20

print("Situação do aluno:")

print("Média: ", media, " - Faltas: ", abscense)

if media >= 6 && abscense <= 25 {
    print("Aluno Aprovado\n")
}else{
    print("Aluno Reprovado\n")
}
// booleana
let aprovado = (media >= 6.0 && abscense <= 25)

if aprovado {
    print("Aluno aprovado\n")
}else{
    print("Aluno Reprovado\n")
}


// *** EXERCIO 04 ***/*

//    Avaliar se um estudante entrou na faculdade
//
//    Para entrar, tem que obedecer uma destas
//
//    condiçoes:
//
//    1) Aprovado no vestibular
//
//    2) Passou no ENEM
//
//*/

print("Questão 4 Resposta\n")
let approvedExam = false
let passEnem = true

if (approvedExam || passEnem) {

    print("Entrou na faculdade\n")

} else {

    print("Não entrou na faculdade\n")

}

// *** EXERCÃCIO 05 ***
// Regra de NegÃ³cio: Para ser admitido no programa de trainees, a pessoa
//  precisa:
//  - Conhecer as linguagens Kotlin ou Swift, e
//  - Falar inglÃªs fluentemente

print("Questão 5 Resposta\n")
let userHabilitys = "English"
let userLinguage = "Kotlin"
let knowKotlin = userLinguage == "Kotlin"
let knowEnglish = userHabilitys == "English"
let knowSwift = userLinguage == "Swift"

if (knowKotlin || knowKotlin) && knowEnglish{
    
    print("You have bein recruted\n")
    
}else{
    print("you dont have what it takes\n")
}
