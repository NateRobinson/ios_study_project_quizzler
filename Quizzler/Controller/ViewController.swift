//
//  ViewController.swift
//  Quizzler
//
//  Created by  NateRobinson on 2019/3/29.
//  Copyright © 2019  NateRobinson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var currentIndex: Int = 0
    var maxLength: Int = 0
    var scores: Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maxLength = allQuestions.list.count
        showQuestion()
    }
    
    func showQuestion(){
        let question = allQuestions.list[currentIndex]
        questionLabel.text = question.questionText
        scoreLabel.text = "总得分：\(scores) 分"
    }
    
    @IBAction func doAnswer(_ sender: UIButton) {
        
        if currentIndex >= maxLength-1 {
            return
        }
        
        var tempResult: Bool
        
        if sender.tag == 0 {
            tempResult = true
        } else {
            tempResult = false
        }
        
        let question = allQuestions.list[currentIndex]
        
        if tempResult == question.answer {
            scores += 5
        }
        
        
        currentIndex += 1
        showQuestion()
        
    }
    
}

