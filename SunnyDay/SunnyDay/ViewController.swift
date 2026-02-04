//
//  ViewController.swift
//  SunnyDay
//
//  Created by 한서영 on 2026/02/04.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //코드를 넣으면 실행
        
        let weather  = "맑음"
        let temperature = 28
        
//        if weather == "흐림" {
//            
//            weatherImageView.image = UIImage(named: "cloud 1")
//        } else if weather == "맑음" {
//            weatherImageView.image = UIImage(named: "sun")
//            
//        }else if weather == "눈" {
//            weatherImageView.image = UIImage(named: "thermometer-2")
//            
//        }else if weather == "비" {
//            weatherImageView.image = UIImage(named: "cloud-4")
//        }
        
        switch weather {
        case "맑음" :
            weatherImageView.image = UIImage(named: "sun")
        case "흐림" :
            weatherImageView.image = UIImage(named: "cloud 1")
        case "눈":
            weatherImageView.image = UIImage(named: "thermometer-2")
        case "비":
            weatherImageView.image = UIImage(named: "cloud-4")
        default:
            break
        }
        
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)"
        
        if temperature < -10 {
            descriptionLabel.text = "이불 밖은 위험해요"
        }else if temperature >= -10 && temperature <= 10{
            descriptionLabel.text = "두툼한 패딩을 챙기세요"
        }else if temperature >= 10 &&
                    temperature <= 20 {
            descriptionLabel.text = "일교차를 조심하세요"
        }    else if temperature >= 20 && temperature < 30{
            descriptionLabel.text =  "여름이 다가오고 있어요"
        } else{
            descriptionLabel.text =  "여름"
        }


}

