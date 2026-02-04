import UIKit

print("Hello") //함수 사용? -> 함수 호출

func sayHello() {
    print("Hello")
}

sayHello()


// with, in, on, at과 같은 전치사를 많이 사용한다
func sayHello(with name: String) { //apple은 함수를 문장처럼 읽히는 걸 좋아함(?) with: ArgumentLabel, neme:parameter 값
    print("Hello, \(name)")
}

sayHello(with: "Swift") // with가 Argument Label이므로 with 선언

func add(a: Int, b: Int) {
    print(a + b) //함수 내의 파라미터 ->Formal Parameter
}

add(a: 1, b: 2) //Actual Parameter,Argument -> 인자
//->Argunment Label
