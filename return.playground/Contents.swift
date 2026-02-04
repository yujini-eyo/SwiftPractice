import UIKit

//Function Head
/*func name(a: Int, b:Int) -> Int {
    
}*/

//글로벌 스코프에서 선언하면 함수, 코드블록 안에서는 정확히 클래스나 구조체 타입 안에서는 메소드라 부름

func generateRandomNumber() -> Int {
    return Int.random(in: 1 ... 100)
}

generateRandomNumber() //-> 함수 호출식
// 식 > 표현식, Expression

//nil coalrscong operator
//nil 병합 연산자
//optional_expr ?? b
//String? ?? String

let name: String? = "kxcoding" //nil
print(name ?? "회원님")
print(name)
