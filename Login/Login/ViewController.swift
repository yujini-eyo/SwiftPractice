//
//  ViewController.swift
//  Login
//
//  Created by 한서영 on 2026/02/04.
//

import UIKit

class ViewController: UIViewController {
    
    // !boolean_expr -> 논리 부정
    
    // optional_expr! -> 강제 추출 연산자 옵셔널 표현식에 저장된 값을 강제로 실행

    //IUO -> Implicitly Unwrappend Optional
    
    @IBOutlet weak var idField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "알림", message: "값을 입력해 주세요",  preferredStyle: .alert )
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    @IBAction func login(_ sender: Any) {
        guard let id = idField.text, !id.isEmpty else{
            showAlert(message: "아이디를 입력해 주세요")
            return
        }
        
        
        guard let password = passwordField.text, !password.isEmpty else{
            showAlert(message: "비밀번호를 입력해 주세요")
            return
        }
        
        /*if id.isEmpty || password.isEmpty {
         print("계정을 입력하세요")
         return
         }*/
        //early exit -> 코드 중첩 문제 해결
        /*guard !(id.isEmpty || password.isEmpty) else {
         print("계정을 입력하세요")
         return
         }*/
//        guard !id.isEmpty && !password.isEmpty else {
//            print("계정을 입력하세요")
//            return
//        }

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
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        idField.becomeFirstResponder()
    }
    
}

