//
//  ViewController.swift
//  Login
//
//  Created by 한서영 on 2026/02/04.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var idField: UITextField!
    
    
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBAction func login(_ sender: Any) {
        let id = idField.text!
        let password = passwordField.text!
        
        /*if id.isEmpty || password.isEmpty {
         print("계정을 입력하세요")
         return
         }*/
        //early exit -> 코드 중첩 문제 해결
        /*guard !(id.isEmpty || password.isEmpty) else {
         print("계정을 입력하세요")
         return
         }*/
        guard !id.isEmpty && !password.isEmpty else {
            print("계정을 입력하세요")
            return
        }
        
        
        
        
        if id == "kxcoding" && password == "1234" {
            resultLabel.text = "로그인 성공!"
        } else {
            resultLabel.text = "로그인 실패!"}
        
        // condition ? expr1 : expr2
        //        resultLabel.text = id == "kxcoding" && password == "1234" ? "로그인 성공" : "로그인 실패"
        
        
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}

