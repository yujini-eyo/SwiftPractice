//
//  Weather.swift
//  SunnyDay
//
//  Created by yujin on 2/5/26.
//

import Foundation
import UIKit

enum Weather: String {
    case clear = "맑음"
    case cloudy = "흐림"
    case rain = "비"
    case snow = "눈"
    
    var image: UIImage? {
        switch self {
        case .clear:
            return UIImage(named: "sun")
        case  .cloudy:
            return UIImage(named: "cloud 1")
        case .snow:
            return UIImage(named: "thermometer-2")
        case .rain:
            return UIImage(named: "cloud-4")
        }
    }
    
    func getDescription(matching temperature: Int) -> String? {
        switch temperature {
        case ..<(-10):
            return "이불 밖은 위험해요"
        case -10 ... 10:
            return "두툼한 패딩을 챙기세요"
        case 11 ... 20:
            return "일교차를 조심하세요"
        case 21 ... 30:
            return  "여름이 다가오고 있어요"
        case 31...:
            return  "XX 여름"
        default:
            return nil
        }
    }
}
