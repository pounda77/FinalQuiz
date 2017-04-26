//
//  ViewController.swift
//  FinalQuiz
//
//  Created by Anthony Pound on 3/15/17.
//  Copyright © 2017 Anthony Pound. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is Mr. Pound's favorite soccer team?",
        "How far is the moon from Earth?",
        "What is the value of Pi to 3 decimal places?"
    ]
    let answers: [String] = [
        "Liverpool",
        "239,000 miles",
        "3.141"
    ]
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "Who knows?"
    }
    
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }


}

