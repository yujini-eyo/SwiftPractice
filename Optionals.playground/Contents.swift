import UIKit

// Non-optional, Non-optional Type

/*
let num: Int?
num = nil
// nil은 값이 없는것과 같다 마치 null?
print(num)

let attendeeCount: Int? = 0  //->nil은 모든 optional Type에 저장 가능

let name: String? = ""
*/


/*
let num = 123
print(num)

let optionalNum: Int? = 123
print(optionalNum!) //강제 추출, Forced Unwraooing
//강제 추출은 좋지 않음

//Unwrapping, 추출

let a = optionalNum
print(type(of: a))
let b = optionalNum!*/

let str: String? = nil//"123"
//let num =  Int(str!)

//optional binding

if let str = str { //let str에서 str은 if 블록 안에서만 사용가능,
    if let num = Int(str){
        print(num)
    } else {
        print("타입 컨버전 실패")
    }
     
} else {
    print("옵셔널 바인딩 실패")
}
