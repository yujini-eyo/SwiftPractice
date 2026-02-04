import UIKit

let arr = [1, 2, 3, 4, 5, 6, 7, 8, 9 ,10]

var result = arr.filter({ (num: Int) ->
    Bool in
    return num.isMultiple(of: 2)
})
print(result)

result = arr.filter({ (num: Int) in
    return num.isMultiple(of: 2)
})
print(result)


result = arr.filter({
    return $0.isMultiple(of: 2) //short-hand argument name $n
})
print(result)


result = arr.filter({$0.isMultiple(of: 2) }) //implicit return
print(result) //inline closer

result = arr.filter() {$0.isMultiple(of: 2) }
print(result) //trailing closure


let cast = ["Vivien", "Marlon", "Kim", "Karl"]
cast.filter({(name) in
    return name.count < 5
})

cast.filter({
    return $0.count < 5
})

cast.filter{$0.count < 5}
