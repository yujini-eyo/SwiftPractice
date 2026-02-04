import UIKit

let a: Int? = 0

let b: Int! = 0 //IUO

print(a)
print(b)

// let c: Int = a -> 강제 추출을 하든 옵셔널 바인딩을 해서 처리해야함

let d: Int = b //b가 IUO로 자동 추출이 가능하다 하지만 nil의 경우 crush가 발생하므로 사용 X
