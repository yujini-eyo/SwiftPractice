//
//  ViewController.swift
//  MyFirstCalculator
//
//  Created by 한서영 on 2026/02/03.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstOperandField: UITextField!
    
    @IBOutlet weak var secondOperandField: UITextField!
    
    var selectedOperator: Operator?
    
    func showAlert(message: String, title: String = "알림") {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction  = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    @IBAction func selectorOperator(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let plusAction = UIAlertAction(title: "+ (더하기)", style: .default){ _ in
            self.operatorButton.setTitle("+", for: .normal)
            self.selectedOperator = .plus}
            actionSheet.addAction(plusAction)
            
        let minusAction = UIAlertAction(title: "- (빼기)", style: .default){ _ in
            self.operatorButton.setTitle("-", for: .normal)
            self.selectedOperator = .minus}
            actionSheet.addAction(minusAction)
            
        let multiplyAction = UIAlertAction(title: "* (곱하기)", style: .default){ _ in
            self.operatorButton.setTitle("*", for: .normal)
            self.selectedOperator = .multiply}
            actionSheet.addAction(multiplyAction)
            
        let divideAction = UIAlertAction(title: "/ (나누기)", style: .default){ _ in
            self.operatorButton.setTitle("/", for: .normal)
            self.selectedOperator = .divide}
            actionSheet.addAction(divideAction)
            
            present(actionSheet, animated: true)
        }
        
        @IBOutlet weak var operatorButton: UIButton!
        
        @IBOutlet weak var resultLabel: UILabel!
        
        @IBAction func calculate(_ sender: Any) {
            
            /*let a = Int(firstOperandField.text!)!
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
             
             let result = a + b */
            
            guard let text = firstOperandField.text, let a = Int(text) else {
                firstOperandField.becomeFirstResponder() //입력창 포커스 맞추기
                
                showAlert(message: "값을 입력해 주세요", title: "오류")
                
                return
            }
            guard let text = secondOperandField.text, let b = Int(text) else {
                showAlert(message: "값을 입력해 주세요")
                return
            }
            guard let op = selectedOperator else {
                showAlert(message: "연산자를 선택해 주세요")
                return
            }
            
            var result: Int? = nil
            
            switch op {
            case .plus:
                result = a + b
            case .minus:
                result = a - b
            case .divide:
                result = a / b
            case .multiply:
                result = a * b
//            default:
//                showAlert(message: "연산자를 입력해 주세요")
            }
            guard let result else { return }
            resultLabel.text = "\(result)"
            
            if firstOperandField.isFirstResponder{
                firstOperandField.resignFirstResponder()
            }
            if secondOperandField.isFirstResponder{
                secondOperandField.resignFirstResponder()
            }
        }
    //First Responder, 최종 응답 객체
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        firstOperandField.becomeFirstResponder()
    }
}

