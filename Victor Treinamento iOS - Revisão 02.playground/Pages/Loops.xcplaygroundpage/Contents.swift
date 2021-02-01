/*:
## Loops
 Na primeira revisão do curso desenvolvemos um exercício para entender como é importante manter um bom controle de constantes e variáveis para evitarmos erros inesperados.
 
 Porém ao revisitar o código do exercício resolvido (abaixo), vemos que ainda há muitas oportunidade de melhoria, como itens repetidos e lógica redundante.
 
 Portanto iremos trabalhar agora numa refatoração deste código.
 
 */
//:  - callout(Exercício): Reescreva o código a seguir para eliminar as repetições e redundâncias. Sugerimos como fator essencial a utilização de um loop do tipo for-in ou repeat-while. Ao efetuar testes da nova solução, certifique-se que os resultados sejam os mesmos da versão original.

// Código original
var questions = [
    "1. the process of converting a high-level language to machine language is known as compilations",
    "2. A source file contains code written in a programming language that is to be sent to the compiler",
    "3. Careful design of software can result in programs that will be efficient, error-free, and easy to maintain",
    "4. Writing code is the first step in the waterfall model of developing software",
    "5. Pseudo-code and flowcharts can be used to represent individual algorithms of a program",
    "6. Pseudo-code uses exact programming language syntax to represent a module in the larger program",
    "7. The C programming language is considered a structured programming language",
    "8. Select meaningful identifiers (names) for all the variables in the program",
    "9. the return statement cannot contain an expression",
    "10. Variables are named memory locations that have a type"
]
var answers = [
    "true",
    "true",
    "true",
    "false",
    "true",
    "false",
    "true",
    "true",
    "false",
    "true"
]
//
var index = 0
var score = 0
// Insira aqui o código refatorado

func checkQuestion (question: Array<String>, answer: Array<String>){
    var index = Int()
    while(index < 10){
        for pergunta in question{
            print(pergunta)
            for resposta in answer{
                if index < 3{
                    switch resposta {
                    case "true":
                        score += 10
                        index += 1
                    default:
                        score += 0
                        index += 1
                    }
                }
                else if index == 3{
                    switch resposta {
                    case "false":
                        score += 10
                        index += 1
                    default:
                        score += 0
                        index += 1
                    }
                }
                else if index == 4{
                    switch resposta {
                    case "true":
                        score += 10
                        index += 1
                    default:
                        score += 0
                        index += 1
                    }
                }
                else if index == 5{
                    switch resposta {
                    case "false":
                        score += 10
                        index += 1
                    default:
                        score += 0
                        index += 1
                    }
                }
                else if index <= 7{
                    switch resposta {
                    case "true":
                        score += 10
                        index += 1
                    default:
                        score += 0
                        index += 1
                    }
                    
                }
                else if index == 8{
                    switch resposta {
                    case "false":
                        score += 10
                        index += 1
                    default:
                        score += 0
                        index += 1
                    }
                }
                else if index == 9{
                    switch resposta {
                    case "true":
                        score += 10
                        index += 1
                    default:
                        score += 0
                        index += 1
                    }
                }
            }
        }
    }
    print("O total de pontos é \(score)")
}

checkQuestion(question: questions, answer: answers)


/*:
  Para mais informações, consulte: [The Swift Programming Language.](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)


[Anterior](@previous)  |  página 6 of 6 |
 */

