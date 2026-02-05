//
//  ViewController.swift
//  HelloScope
//
//  Created by yujin on 2/5/26.
//

import UIKit

// 1. Global Scope
let g1 = 123


class ViewController: UIViewController {

    // 6. 선언 스코프, 타입 스코프
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 3. Local Scope
        print(g1)
        print(g2)
        
        if true {
            // 4 function Scope
        }
        
        // 5. Local Scope
        func doSomething(value: Int?) {
            if let local1 = value {
                print(local1)
            }
            
            guard let local2 = value else {
                return
            }
            
            for num in 1 ... 100 {
                print(num)
            }
        }
        
    }


}

// 2 Global Scope
let g2 = 456
