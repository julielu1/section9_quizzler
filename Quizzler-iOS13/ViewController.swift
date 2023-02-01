//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six","True"],
        ["The first man in space was bald", "False"],
        ["Chickens have combs on their head", "True"],
        ["Crickets chirp by rubbing their legs together", "True"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quiz[questionNumber][0]
    }
    @IBAction func anyButtonPressed(_ sender: UIButton) {
        
        if sender.currentTitle == quiz[questionNumber][1] {
            print("Right!")
            
            if questionNumber + 1 < quiz.count {
                questionNumber += 1
            }
            else {
                questionNumber = 0
            }
            updateUI()
        }
        else {
            print("Wrong!")
        }
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }

}

