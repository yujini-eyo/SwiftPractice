//
//  ViewController.swift
//  MyFirstAnimation
//
//  Created by yujin on 2/4/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var boxView: UIView!
    
    
    @IBAction func moveBox(_ sender: Any) {
        UIView.animate(withDuration: 10, animations: {
            self.boxView.frame = CGRect(x: 200, y: 400, width: 200, height: 200)
            self.boxView.backgroundColor = UIColor.yellow
        }, completion:  { _ in
             print("애니메이션 종료")
        })
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

