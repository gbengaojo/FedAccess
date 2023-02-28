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
var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"

var occupations = ]
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

// arrays are dynmic as elements are added
fruits.append("blueberries")
print(fruits)

// to empty an array or dictionary...
fruits = []
occupations = [:]

// empty array or dictionary assignment requires type declaration
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

// Control Flow => for-in
let individualScores = [75, 3, 103, 87 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

// testing for `nil` values with if and let and <Type>?
var optionalString: String? = "Hello"
print(optionalString == nil) // False

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeing = "Hello, \(name)"
}

// optional values using the default value operator `??`
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"

// todo: prints nothing b/c nickname is `nil`??
if let nickname {
    print("hey, \(nickname)")
}

// case-switch statements support a variety of comparison operations
let vegetetable = "red pepper"
switch vegetetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in a soup.")
}