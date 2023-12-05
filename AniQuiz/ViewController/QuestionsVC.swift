//
//  QuestionsVC.swift
//  AniQuiz
//
//  Created by Leonardo Macedo on 04/12/23.
//

import UIKit

extension UIColor {
    static var greenBackgorund = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1.0)
    static var redBackgorund = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1.0)
    static var buttonDefault = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
}

class QuestionsVC: UIViewController {
    
    var points = 0
    var questionNumber = 0

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var buttonQuestion: [UIButton]!
    
    @IBAction func answerButton(_ sender: UIButton) {
        let userSelectCorrectAnswer = questions[questionNumber].correctAnswer == sender.tag
        
        if userSelectCorrectAnswer {
            points += 1
            sender.backgroundColor = UIColor.greenBackgorund
        } else {
            sender.backgroundColor = UIColor.redBackgorund
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(questionsConfig), userInfo: nil, repeats: false)
        }
    }
    
    
    func perfomaceScreenNav() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutConfig()
        questionsConfig()
    }
    
    func layoutConfig() {
        navigationItem.hidesBackButton = true
        for button in buttonQuestion {
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func questionsConfig() {
        questionLabel.text = questions[questionNumber].title
        
        for button in buttonQuestion {
            let buttonTitle = questions[questionNumber].answers[button.tag]
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor.buttonDefault
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
