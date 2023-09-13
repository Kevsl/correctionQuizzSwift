//
//  ViewController.swift
//  quizz2
//
//  Created by K on 11/09/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var question1: UIButton!
    
    
    @IBOutlet weak var question3: UIButton!
    @IBOutlet weak var question2: UIButton!
    @IBOutlet weak var question4: UIButton!
    
    
    @IBOutlet weak var feedBack: UILabel!
    
    var questionIndex = 0
    
    
    let datas: [[String]] = [
        ["Quel jour sommes-nous?", "Mardi",
         "Lundi", "Mardi", "Mercredi", "Jeudi"],
        ["Quel temps fait-il?", "Beau",
          "Pas beau", "Moyen", "Pluvieux","Beau"],
        ["Quelle est la capitale de la France?", "Paris",
          "Londres","Paris", "Berlin", "Madrid"],
        ["Quel est le plus grand océan du monde?", "Pacifique",
          "Atlantique", "Indien", "Arctique","Pacifique"],
        ["Qui a peint la Joconde?", "Léonard de Vinci",
        "Picasso", "Van Gogh","Léonard de Vinci", "Monet"],
        ["Quel est le symbole chimique de l'oxygène?", "O",
         "O", "H", "C", "N"],
        ["Combien de planètes dans notre système solaire?", "8",
         "8", "7", "9", "10"]
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        QuestionLabel.text = datas[questionIndex][0]
        
        question1.setTitle( datas[questionIndex][2] , for: .normal)
        question2.setTitle( datas[questionIndex][3] , for: .normal)
        question3.setTitle( datas[questionIndex][4] , for: .normal)
        question4.setTitle( datas[questionIndex][5] , for: .normal)
        
        feedBack.layer.opacity = 0
        
    }


    @IBAction func actionButton1(_ sender: UIButton) {
        checkAnswear(answear:
                        question1.titleLabel?.text)
    }
    
    @IBAction func actionButton2(_ sender: Any) {
        checkAnswear(answear:
                        question2.titleLabel?.text)    }
    
    @IBAction func actionButton3(_ sender: UIButton) {
        checkAnswear(answear:
                        question3.titleLabel?.text)   }
    
    @IBAction func actionButton4(_ sender: UIButton) {
        checkAnswear(answear:
                        question4.titleLabel?.text)   }
    
    
    func checkAnswear(answear: String?){

        if(answear == datas[questionIndex][1] ){
            feedBack.text = "C'est exact"
            feedBack.layer.opacity = 1
            if(questionIndex < datas.count  - 1 ){
                questionIndex += 1
                QuestionLabel.text = datas[questionIndex][0]
                
                question1.setTitle( datas[questionIndex][2] , for: .normal)
                question2.setTitle( datas[questionIndex][3] , for: .normal)
                question3.setTitle( datas[questionIndex][4] , for: .normal)
                question4.setTitle( datas[questionIndex][5] , for: .normal)
                                
            }else{
                feedBack.text = "Bravo, vous avez terminé le quizz"
            }

        }
        else{
            feedBack.text = "Raté"
            feedBack.layer.opacity = 1

        }
    }
    
    
    
    
}

