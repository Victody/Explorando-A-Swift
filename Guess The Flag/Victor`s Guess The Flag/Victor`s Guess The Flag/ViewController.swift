//
//  ViewController.swift
//  Victor`s Guess The Flag
//
//  Created by vponciano on 20/01/21.
//

import UIKit

class ViewController: UIViewController {
    //Label de T[itulo do jogo
    @IBOutlet weak var lblNameGame: UILabel!
    
    //Área de visualização da imagem
    @IBOutlet weak var flagImageView: UIImageView!
    
    //Botões para controle da resposta
    @IBOutlet weak var btnOp1: UIButton!
    
    @IBOutlet weak var btnOp2: UIButton!
    
    @IBOutlet weak var btnOp3: UIButton!
    
    //Label de Texto "Pontuação"
    @IBOutlet weak var lblPontuacao: UILabel!
    
    //Label para controle do Valor de Pontuação
    @IBOutlet weak var lblValorPontuacao: UILabel!
    
    //Label de Texto "Rodada"
    @IBOutlet weak var lblRodada: UILabel!
    
    //Label de controle de Rodada atual
    @IBOutlet weak var lblValorRodada: UILabel!
    
    //Botão de emergência para resetar atributos da aplicação
    @IBOutlet weak var btnResetar: UIButton!
    
    //Array de controle de Imagens
    let ListaDeBandeiras = ["estonia.png","france.png","germany.png","ireland.png","italy.png","monaco.png","nigeria.png","poland.png","russia.png","spain.png","uk.png","us.png"]
    
    //Arrays de Controle dos textos dos botões
    let ListaDePaises = ["Estonia","França","Alemanha","Irlanda","Italia","Monaco","Nigeria","Polonia","Russia","Espanha","Reino Unido","Estados Unidos"]
    
    let ListaDeEasterEggs = ["Terra da Enguia Marinada","Terra da falta de banho","7 X 1","Terra dos duendes","Terra da Pizza","Você só ouviu falar por causa da F1","Terra do Usain Bolt","Terra dos pianistas","Terra da Vodka","Perdeu o Brasil para portugal","Terra de bebedores de chá","Hamburguer, Guerra e Petróleo"]
    
    //Atributos de Jogo
    var jogadorPontos = 0
    var rodada = 0
    
    //Atributos de controlador de jogo
    var  indexRandom = 0
    var opTxt = 0
    var opCorrectAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randImageSelector()
        //Regras de controle dos Textos dos Botões de Resposta
        txtBtnOptions()
    }
        
    @IBAction func onResetarPressed(_ sender: Any) {
        
        jogadorPontos = 0
        rodada = 0
        
       randImageSelector()
        
        //Regras de controle dos Textos dos Botões de Resposta
        txtBtnOptions()
    }
    
    func txtBtnOptions(){
        if indexRandom == 0{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[0], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[0], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 1...5)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 1...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[0], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[0], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 1...5)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 1...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[0], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[0], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 1...5)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 1...5)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 1{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[1], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[1], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 2...5)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 2...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[1], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[1], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 2...5)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 2...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[1], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[1], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 2...5)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 2...5)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 2{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[2], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[2], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 3...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 3...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[2], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[2], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 3...5)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 3...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[2], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[2], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 3...5)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 2...5)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 3{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[3], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[3], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 4...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 4...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 4...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 4...11)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[3], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[3], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 4...11)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 4...11)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 4...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 4...11)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[3], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[3], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 4...11)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 4...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 4...11)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 4...11)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 4{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[4], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[4], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 5...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 5...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 5...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 5...11)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[4], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[4], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 5...11)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 5...11)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 5...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 5...11)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[4], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[4], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 5...11)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 5...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 5...11)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 5...11)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 5{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[5], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[5], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[5], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[5], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[5], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[5], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 6...11)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 6...11)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 6{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[6], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[6], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...5)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...5)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[6], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[6], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...5)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 0...5)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...5)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...5)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[6], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[6], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 0...5)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...5)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...5)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...5)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 7{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[7], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[7], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...6)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...6)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...6)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...6)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[7], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[7], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...6)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 0...6)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...6)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...6)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[7], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[7], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 0...6)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...6)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...6)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...6)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 8{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[8], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[8], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...7)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...7)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...7)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...7)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[8], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[8], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...7)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 0...7)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...7)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...7)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[8], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[8], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 0...7)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...7)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...7)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...7)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 9{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[9], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[9], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...8)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...8)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...8)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...8)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[9], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[9], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...8)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 0...8)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...8)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...8)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[9], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[9], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 0...8)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...8)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...8)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...8)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 10{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[10], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[10], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...9)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...9)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...9)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...9)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[10], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[10], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...9)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 0...9)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...9)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...9)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[10], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[10], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 0...9)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...9)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...9)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...9)], for: .normal)
                }
            }
        }
        
        else if indexRandom == 11{
            opTxt = Int.random(in: 1...2)
            opCorrectAnswer = Int.random(in: 1...3)
            if opCorrectAnswer == 1{
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[11], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[11], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...10)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...10)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...10)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...10)], for: .normal)
                }
            }
            else if opCorrectAnswer == 2{
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[11], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[11], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...10)], for: .normal)
                    btnOp3.setTitle(ListaDePaises[Int.random(in: 0...10)], for: .normal)
                }
                else{
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...10)], for: .normal)
                    btnOp3.setTitle(ListaDeEasterEggs[Int.random(in: 0...10)], for: .normal)
                }
            }
            else{
                if opTxt == 1{
                    btnOp3.setTitle(ListaDeEasterEggs[11], for: .normal)
                }
                else if opTxt == 2{
                    btnOp3.setTitle(ListaDePaises[11], for: .normal)
                }
                opTxt = Int.random(in: 1...2)
                if opTxt == 1{
                    btnOp2.setTitle(ListaDeEasterEggs[Int.random(in: 0...10)], for: .normal)
                    btnOp1.setTitle(ListaDePaises[Int.random(in: 0...10)], for: .normal)
                }
                else{
                    btnOp2.setTitle(ListaDePaises[Int.random(in: 0...10)], for: .normal)
                    btnOp1.setTitle(ListaDeEasterEggs[Int.random(in: 0...10)], for: .normal)
                }
            }
        }
    }
    
    func randImageSelector(){
        indexRandom = Int.random(in: 0...ListaDeBandeiras.count-1)
        flagImageView.image = UIImage(named: ListaDeBandeiras[indexRandom])
        
        lblValorPontuacao.text = String(jogadorPontos)
        
        lblValorRodada.text = String(rodada)
    }
    
    
    
}

