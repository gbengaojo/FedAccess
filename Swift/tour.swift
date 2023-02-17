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

// ...
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

// heredoc quotation
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""

// arrays and dictionaries
var fruits = ["strawberries"]