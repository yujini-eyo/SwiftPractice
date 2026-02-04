import UIKit

func sayHello() {
    
}

let a: () -> () = sayHello

func sayHello(with name: String) {
    
}

let b = sayHello(with: ) //argument가 있다면 함수 호출, 없다면 functionNotation

func sayHello(_ name: String) {
    
}

let c = sayHello(_: )


sayHello("Swift") // c 호출
sayHello(with: "Swift") // b 호출

func add(a:Int, b: Int) -> Int {
    return a + b
}

let d = add(a:b:)
