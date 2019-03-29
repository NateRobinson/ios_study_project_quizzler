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
            
            let alert = UIAlertController(title: "了不起！", message: "你已经完成了所有的题目，是否想重新开始？", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "重新开始", style: .default, handler: {
                (action) in self.startOver()
            })
            
            alert.addAction(restartAction)
            present(alert, animated: false, completion: nil)
            
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
            ProgressHUD.showSuccess("正确")
        } else {
            ProgressHUD.showError("错误")
        }
        
        
        currentIndex += 1
        showQuestion()
        
    }
    
    func startOver(){
        currentIndex = 0
        scores = 0
        showQuestion()
    }
    
}

