//
//  ViewController.swift
//  QuizSwift
//
//  Created by Arjun Bharadwaj on 5/16/18.
//  Copyright © 2018 Vaadiraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    var currentQuestionIndex: Int = 0
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Karnataka?",
        "What is cognac made of?",
        "Who will win this years IPL?"
    ]
    
    let answers: [String] = [
        "It is 14",
        "Bangalore",
        "Monteplier",
        "RCB"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        // Increment the counter
        currentQuestionIndex = (currentQuestionIndex + 1) % questions.count
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showNextAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

