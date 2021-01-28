//-----------------------------------------
//-- Desafio CPF
//-----------------------------------------

let CPF: String = "40374770840"

let CpfTotalDeCaracteres = 8
var CPFIndex1 = CPF.index(CPF.startIndex, offsetBy: 9)
var CPFIndex2 = CPF.index(CPF.startIndex, offsetBy: 10)

//let CPFVerificador1 = String(CPF[CPFIndex1])
//let CPFVerificador2 = String(CPF[CPFIndex2])


// 1. Imprimir o CPF número a número
for character in CPF{
    print(character)
    let char  = String(character)
// 2 - Verificar se o digito verificador está correto
    if CPF.count > CpfTotalDeCaracteres && CPF.count == 11{
        if char == String(CPF[CPFIndex1]){
            print("Digíto verificador correto")
        }
        else if char == String(CPF[CPFIndex2]){
            print("Digíto verificador correto")
        }
        else{
            print("Não é o Digíto Verificador")
        }
    }
    else if CPF.count > CpfTotalDeCaracteres && CPF.count == 10{
        if char == String(CPF[CPFIndex1]){
            print("Digíto verificador correto")
        }
        else{
            print("Não é o Digíto Verificador")
        }
    }
}






