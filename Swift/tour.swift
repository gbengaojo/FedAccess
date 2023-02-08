print("Hello World")

// var v. let (variable v. constant)
var myVariable = 42
myVariable = 50
let myConstant = 42

// type inference v. explicit declaration when ambiguous
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4

// casting is never implicit, always explicit
let label = "The width is "
let width = 94
let widthLabel = label + String(width)

