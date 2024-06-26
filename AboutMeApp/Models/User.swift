//
//  User.swift
//  AboutMeApp
//
//  Created by Alex Pesenka on 13/06/24.
//

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func mockUser() -> User {
        return User(
            username: "user",
            password: "111",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let occupation: String
    let yearOfBirth: Int
    let countryOfBirth: String
    let avatarFileName: String
    let biography: String
    let favoriteAnimal: Animal
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> Person {
        Person(
            firstName: "Alexander",
            lastName: "Pesenka",
            occupation: "Product Designer",
            yearOfBirth: 1994,
            countryOfBirth: "Belarus",
            avatarFileName: "avatarImage",
            biography: "Родился в октябре 1994, в городе Минск, любит работать удаленно, плавать, серфить, кататься на скейте, гулять и путешествовать. Длительное время работает дизайнером, изучает основы iOS программирования, но не чтобы стать чтобы стать программистом, а чтобы стать суперменом.",
            favoriteAnimal: Animal.getAnimal()
        )
    }
}

struct Animal {
    let title: String
    let imageName: String
    let description: String
    
    static func getAnimal() -> Animal {
        Animal(
            title: "Собака",
            imageName: "dogImage",
            description: "Пока жил с родителями, воспитал две собаки, немецкую овчарку и бельгийскую овчарку, также известную как малинуа."
        )
    }
}

