import UIKit

let a = 12
let b = 24

//+a //전치 연산자, Prefix Operator
//
//a + b
//
//12 + 24
//
//
//a * b
//a / b
//b / a
//
//let c = Double(a)
//let d = Double(b)
//
//c / d
//d / d
//
//
//a % b
//
//c.truncatingRemainder(dividingBy: d)

a == b

a != b

a > b
a >= b


a > 12
a >= 12

a < b
a <= b

//조건 ==condition ==boolean expression
if a % 2 == 0{
    print("짝수")
} else{
    print("홀수")
}
    


let weekday = Calendar.current.component(.weekday, from: .now)

if weekday == 1 {
    print("일요일")
} else if weekday == 2{
    print("월요일")
} else if weekday == 3{
    print("화요일")
} else if weekday == 4{
    print("수요일")
} else if weekday == 5{
    print("옥요일")
} else if weekday == 6{
    print("금요일")
} else {
    print("토요일")
}





