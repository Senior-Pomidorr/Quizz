//
//  QuestionsBrain.swift
//  Quizz
//
//  Created by Daniil Kulikovskiy on 18.04.2023.
//

import Foundation
struct QuestionsBrain {
    let questions = [
        Questions(text: "Five + Six equal to Eleven", answer: "True"),
        Questions(text: "Four is greather than two", answer: "True"),
        Questions(text: "Three + seven equal to Twelve", answer: "False"),
        Questions(text: "A slug's blood is green.", answer: "True"),
        Questions(text: "Approximately one quarter of human bones are in the feet.", answer: "True"),
        Questions(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
        Questions(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
        Questions(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
        Questions(text: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
        Questions(text: "You can lead a cow down stairs but not up stairs.", answer: "False"),
        Questions(text: "Google was originally called 'Backrub'.", answer: "True"),
        Questions(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
        Questions(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
        Questions(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
        Questions(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
        
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ answer: String) -> Bool {
        if answer == questions[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func questionTextGet()-> String {
        return questions[questionNumber].text
    }
    
    func progress() -> Float {
        let progress = Float(questionNumber) / Float(questions.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < questions.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
