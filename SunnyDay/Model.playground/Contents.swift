import UIKit

// 모델링
// 추상화
// 이름, 별명, 생일, 성별, 사는곳, 키, 몸무게, 성격, 휴대폰 번호

/*
 enum TypeName: RawValueType{ // -> RawValueType에는 String, Character, Number Type
    case caseName = Value
 }
 */

/*
 extension Type {
     computedProrety
     computedTypeProperty
     instanceMetiod
     typeMethod
     initializer
     subscript
     NestedType
 }
 */
extension Double {
    static let reviewScoreFormatter = {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 1
        return formatter
    }()
    var reviewScoreString: String? {
        return Self.reviewScoreFormatter.string(for: self)
    }
    
    static let priceFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "ko_kr")  //지역 설정
        return formatter
    }()
    var priceString: String? {
        return Self.priceFormatter.string(for: self)
    }
    
}

extension String {
    var url: URL? {
        URL(string: self)
    }
}

class Service {
    let title: String
    let subtitle: String
    let cardImageUrl: String
    let thumnailImageUrl: String?
    let reviewScore: Double?
    let isCertificationAvailable: Bool

    init(
        title: String,
        subtitle: String,
        cardImageUrlStr: String,
        thumnailImageUrlStr: String?,
        reviewScore: Double?,
        isCertificationAvailable: Bool
    ) {
        self.title = title
        self.subtitle = subtitle
        self.cardImageUrl = cardImageUrlStr
        self.thumnailImageUrl = thumnailImageUrlStr
        self.reviewScore = reviewScore
        self.isCertificationAvailable = isCertificationAvailable
    }
}

let s = Service(
    title: "Mastering iOS",
    subtitle: "",
    cardImageUrlStr: "",
    thumnailImageUrlStr: "",
    reviewScore: 5.0,
    isCertificationAvailable: true
)

s.reviewScore?.reviewScoreString
s.cardImageUrl.url
s.thumnailImageUrl?.url

extension Int {
    static let durationFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute]
        formatter.unitsStyle = .full

        return formatter
    }()
    var durationString: String? { // 값의 성격을 파악할 수 있게 Srting앞에 구분을 한다
        return Self.durationFormatter.string(from: TimeInterval(self))
    }
}


class Course: Service {
    /*
    // 인스턴스 속성. Instance Property
    let title: String  // 상수 저장 속성, property
    let subtitle: String
    
    let cardImageUrlStr: String
    // let cardImageUrl: URL -> 계산 속성. Computed Property
    var cardImageUrl: URL? {
    
        return URL(string: cardImageUrlStr)
        // 읽기 전용 계산 속성. read-only computed property
    }
    
    let thumnailImageUrlStr: String?
    var thumnailImageUrl: URL? {
        guard let str = thumnailImageUrlStr else {
            return nil
        }
    
        return URL(string: str)
    }
    
    static let reviewScoreFormatter = {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 1
    
        return formatter
    }()
    
    let reviewScore: Double?  //4.232423
    var reviewScoreStr: String? {
        guard let score = reviewScore else { return nil }
    
        // let formetter = NumberFormatter() //-> 재사용하기
        // formatter.minimumFractionDigits = 0
        // formatter.maximumFractionDigits = 1
    
        return Course.reviewScoreFormatter.string(for: score)
    }
    
    let isCertificationAvailable: Bool */
    let courseId: Int
    var isFree: Bool {
        return price == nil
    }
    let lectureCount: Int
    let totalDuration: Int
    
//    static let durationFormatter = {
//        let formatter = DateComponentsFormatter()
//        formatter.allowedUnits = [.hour, .minute]
//        formatter.unitsStyle = .full
//
//        return formatter
//    }()
//    var totalDurationStr: String? {
//        //        let formatter = DateComponentsFormatter()
//        //
//        //        formatter.allowedUnits = [.hour, .minute]
//        //        formatter.unitsStyle = .full
//
//        return Self.durationFormatter.string(from: TimeInterval(totalDuration))
//    }
    
    let priorty: Int
    let isPublic: Bool
    let period: Int?
    let price: Double?
    let discountedPrice: Double?

//    static let priceFormatter = {
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        formatter.locale = Locale(identifier: "ko_kr")  //지역 설정
//
//        return formatter
//    }()

    var priceString: String? {
        guard let price else { return "무료" }

        //let formatter = NumberFormatter()
        //formatter.numberStyle = .currency
        //formatter.locale = Locale(identifier: "ko_kr")  //지역 설정

        if let discountedPrice {
            return discountedPrice.priceString
        }
        return price.priceString
    }

    init(
        title: String,
        subtitle: String,
        cardImageUrlStr: String,
        thumnailImageUrlStr: String?,
        reviewScore: Double?,
        isCertificationAvailable: Bool,
        courseId: Int,
        lectureCount: Int,
        totalDuration: Int,
        priorty: Int,
        isPublic: Bool,
        period: Int?,
        price: Double?,
        discountedPrice: Double?
    ) {
        self.courseId = courseId
        self.lectureCount = lectureCount
        self.totalDuration = totalDuration
        self.priorty = priorty
        self.isPublic = isPublic
        self.period = period
        self.price = price
        self.discountedPrice = discountedPrice

        super.init(
            title: title,
            subtitle: subtitle,
            cardImageUrlStr: cardImageUrlStr,
            thumnailImageUrlStr: thumnailImageUrlStr,
            reviewScore: reviewScore,
            isCertificationAvailable: isCertificationAvailable
        )
    }

    //    init() { // 생성자 -> 모든 속성을 적절한 값으로 초기화 하는것
    //        formatter.minimumFractionDigits = 0
    //        formatter.maximumFractionDigits = 1
    //    }

}

extension Date {
    static let formatter = DateFormatter()
    
    func format(with format: String, locale: Locale = Locale(identifier: "ko_kr")) -> String? {
        Self.formatter.dateFormat = format
        Self.formatter.locale = locale
        
        return Self.formatter.string(from: self)
    }
}

class Camp: Service {
    let campId: Int
    let startDate: Date
    let endDate: Date
    let isOnlineCamp: Bool
    // mapURL
    let locationUrl: URL?
    let latitude: Double?
    let longitude: Double?

    //Nested Type
    enum Status: String {
        case preparingForOpening = "개강준비중"
        case recruiting = "모집중"
        case recruitingEnded = "모집마감"
        case onGoing = "개강중"
        case ended = "종강"
    }

    let status: Status
    let generation: Int
    var statusString: String? {
        return "\(generation)기 \(status.rawValue)"

        /* switch status { -> enum에서 String을 추가해서 입력하면 switch이 필요 없어짐
        case .preparingForOpening:
            return "\(generation)기 개강 준비중"
        case .recruiting:
            return "\(generation)기 모집중"
        case .recruitingEnded:
            return "\(generation)기 모집 마감"
        case .onGoing:
            return "\(generation)기 개강중"
        case .ended:
            return "\(generation)기  종강"
        }*/
    }
    let priorty: Int
    let isPublic: Bool
    
    let price: Double?
    let discountedPrice: Double?
    var priceString: String? {
        guard let price else { return "무료" }
        
        if let discountedPrice {
            return discountedPrice.priceString
        }
        return price.priceString
    }
    
    init(title: String,
         subtitle: String,
         cardImageUrlStr: String,
         thumnailImageUrlStr: String? = nil,
         reviewScore: Double? = nil,
         isCertificationAvailable: Bool = true,
         campId: Int ,
         startDate: Date,
         endDate: Date,
         isOnlineCamp: Bool,
         locationUrl: URL? = nil,
         latitude: Double? = nil,
         longitude: Double? = nil,
         status: Status = .preparingForOpening,
         generation: Int,
         priorty: Int,
         isPublic: Bool,
         price: Double?,
         discountedPrice: Double? = nil){
        self.campId = campId
        self.startDate = startDate
        self.endDate = endDate
        self.isOnlineCamp = isOnlineCamp
        self.locationUrl = locationUrl
        self.latitude = latitude
        self.longitude = longitude
        self.status = status
        self.generation = generation
        self.priorty = priorty
        self.isPublic = isPublic
        self.price = price
        self.discountedPrice = discountedPrice
        
        
        super.init(title: title, subtitle: subtitle, cardImageUrlStr: cardImageUrlStr, thumnailImageUrlStr: thumnailImageUrlStr, reviewScore: reviewScore, isCertificationAvailable: isCertificationAvailable)    }
}

extension Camp {
    convenience init(title: String,
         subtitle: String,
         cardImageUrlStr: String,
         thumnailImageUrlStr: String? = nil,
         reviewScore: Double? = nil,
         isCertificationAvailable: Bool = true,
         campId: Int,
         startDate: Date,
         locationUrl: URL,
         status: Status = .preparingForOpening ,
        priorty: Int,
        isPublic: Bool){
        self.init(title: title, subtitle: subtitle, cardImageUrlStr: cardImageUrlStr, reviewScore: reviewScore, campId: campId, thumnailImageUrlStr: thumnailImageUrlStr, isCertificationAvailable:  isCertificationAvailable, campId: campId, locationUrl: locationUrl, status: status, startDate: startDate, endDate: startDate, generation: 0, priorty: priorty, isPublic: isPublic, price: nil)
    }
}
 
struct UpdateHistory {
    let id: Int
    let version: String
    let updateDate: Date
    let content: String
}

class Person {
    let name: String
    let age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Member: Person {  //-> class name: 상속받을 class name
    let height: Double
    let weight: Double

    init(name: String, age: Int, height: Double, weight: Double) {
        self.height = height
        self.weight = weight

        super.init(name: name, age: age)
    }
}

class Employee: Person {
    let department: String
    let rank: String

    init(name: String, age: Int, department: String, rank: String) {
        self.department = department
        self.rank = rank

        super.init(name: name, age: age)
    }
}

let e = Employee(name: "김영업", age: 30, department: "영업", rank: "과장")
e.department
e.rank
e.age
e.name

let p = Person(name: "김대표", age: 30)
p.name
p.age

// raq value, 원시 값
enum Alignment: Int {
    case left
    case right = 100
    case center
}

Alignment.left.rawValue
Alignment.right.rawValue
Alignment.center.rawValue

Alignment(rawValue: 0)
Alignment(rawValue: 2000)

enum Weekday: String {
    case sunday
    case monday = "MON"
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

Weekday.sunday.rawValue
Weekday.monday.rawValue

//struct Person {
//    let name: String = { "Taylor Swift".lowercased() }()  // () -> String
//}

//let formetter = NumberFormatter()
// formetter.minimumFractionDigits = 0
// formetter.maximumFractionDigits = 1
//
// formetter.string(for: 4.0)

//let ios = Course(title: "Mastering iOS")

//let swift = Course(title: "Mastering Swift")
