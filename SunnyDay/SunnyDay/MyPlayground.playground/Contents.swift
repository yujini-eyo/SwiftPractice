import UIKit

let num = 1

switch num {
case 1 .. 100:
    print("one")
case 0:
    print("zero")
    
default:
    break
}

//Interval Matching
//1~10, 1-10

1 ... 10 //closed range operator
1 ..< 10 //half range operator
1 ...9

//10 ... 1
(1 ... 10 ).reversed()

//lower bound: 시작 범위
//upper bound: 종료 범위
//lower bound <= upper bound

