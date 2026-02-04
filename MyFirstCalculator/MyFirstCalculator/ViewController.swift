//
//  ViewController.swift
//  MyFirstCalculator
//
//  Created by 한서영 on 2026/02/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstOperandField: UITextField!
    
    @IBAction func selectorOperator(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let plusAction = UIAlertAction(title: "+ (더하기)", style: .default){ _ in
            self.operatorButton.setTitle("+", for: .normal)}
        let minusAction = UIAlertAction(title: "- (뺴기)", style: .default){ _ in
            self.operatorButton.setTitle("-", for: .normal)}
        let multiplyAction = UIAlertAction(title: "* (곱하기)", style: .default){ _ in
            self.operatorButton.setTitle("*", for: .normal)}
        let divideAction = UIAlertAction(title: "/ (나누기)", style: .default){ _ in
            self.operatorButton.setTitle("/", for: .normal)}
        
        actionSheet.addAction(divideAction)
        present(actionSheet, animated: true)
    }
    
    @IBOutlet weak var operatorButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var secondOperandField: UITextField!
    
    
    @IBAction func calculate(_ sender: Any) {
        
        let a = Int(firstOperandField.text!)!
        let b = Int(secondOperandField.text!)!
        
        let op = operatorButton.title(for: .normal)!
        
        if op == "+" {
            let result = a + b
            resultLabel.text = "\(result)"
        } else if op == "-" {
            let result = a - b
            resultLabel.text = "\(result)"
        } else if op == "*" {
            let result = a * b
            resultLabel.text = "\(result)"
        } else if op == "/" {
            let result = a / b
            resultLabel.text = "\(result)"
        } else{
            print("연산자 선택하기")
        }
        
        let result = a + b
        resultLabel.text = "\(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

