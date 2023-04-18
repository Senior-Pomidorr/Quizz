//
//  ViewController.swift
//  Quizz
//
//  Created by Daniil Kulikovskiy on 16.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var questionText: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    var questionsBrain = QuestionsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionText.text = questionsBrain.questionTextGet()
    }

    @IBAction func answerButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userIsRight = questionsBrain.checkAnswer(userAnswer)
        
        userIsRight == true ? (sender.backgroundColor = .green) : (sender.backgroundColor = .red)
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(update), userInfo: nil, repeats: false)
        questionsBrain.nextQuestion()
    }
    
    @objc func update() {
        scoreLabel.text = "Score: \(questionsBrain.getScore())"
        questionText.text = questionsBrain.questionTextGet()
        progressBar.progress = questionsBrain.progress()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
    }
    
    
    
}

