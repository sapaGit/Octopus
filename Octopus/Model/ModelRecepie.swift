
import Foundation

struct RecepieData: Codable {
    let menu: [Menu]
}

// MARK: - Menu
struct Menu: Codable {
    let recepie: Recepie
}

// MARK: - Recepie
struct Recepie: Codable {
    let title: String
    let ingredients: [Ingredient]
    let smallImage, largeImage: String
    let description: [Description]
    let dificulty, cookingTime, author, authorDescription, info, authorImage: String
}

// MARK: - Description
struct Description: Codable {
    let step: String
}

// MARK: - Ingredient
struct Ingredient: Codable {
    let ingredient: String
}
