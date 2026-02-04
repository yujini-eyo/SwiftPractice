import UIKit

// 함수는 반복적으로 사용할 수 있는 코드 블록 -> Function > Named Closure
// closure은 코드블록을 다른 곳으로 전달하는 역할(?) -> Closure > Unnamed Closure


//함수 기본
/*func name(params) -> Type {

 }*/

//closure 기본 형태 -> 파라미터로 값을 전달하기 때문에 단독 사용은 불가능
/*
 { (params) -> Type in
 }
 */


/*
func sayHello() {
    print("Hello")
}
sayHello()

var f: () -> () =  sayHello
let f1: () -> Void = sayHello
// () Void -> 값 저장 x 항상 빈 괄호

func add(a: Int, b: Int) -> Int {
    return a + b
}

let addFunction: (Int, Int) -> Int = add

/* 함수와 같은 형태이지만 단독 사용은 불가능하다*/
f = { print("Hello") }
//closure Expression
f()

let a = 0
// Int

let b = "Hello"
// String

func execute(codeBlock: () -> ()){
    codeBlock()
}
execute (codeBlock: {print("hi")})
execute (codeBlock: sayHello)


let optionalFunction: ((Int, Int) -> Int)? = nil
 
let arithmeticFunction: ((Int, Int) -> Int)? = {
    (a: Int, b: Int) -> Int in
    return a + b
}
*/

//arithmeticFunction(1, 2) //closure에는 argument를 쓰면 안됨


func sayHello(with name: String = "방문자님") -> String {
        return"\(name), 안녕하세요 :)"
}

sayHello(with: "테일러 스위프트")
sayHello()
