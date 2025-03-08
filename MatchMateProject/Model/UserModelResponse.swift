//
//  UserModel.swift
//  MatchMate
//
//  Created by Abhishek Kumar on 06/03/25.
//

struct UserInfo: Codable,Hashable {
    let results: [Result]
    let info: Info
}

// MARK: - Info
struct Info: Codable,Hashable {
    let seed: String
    let results, page: Int
    let version: String
}

// MARK: - Result
struct Result: Codable,Hashable {
    let gender: String
    let name: Name
    let email: String
    let phone, cell: String
    let picture: Picture
    let location: Location
    let id: ID
    let dob, registered: Dob
    let nat: String
}
struct ID: Codable,Hashable {
    let name: String
    let value: String?
}
struct Location: Codable,Hashable {
    let street: Street
    let city, state, country: String
}
struct Dob: Codable,Hashable {
    let date: String
    let age: Int
}

// MARK: - Street
struct Street: Codable,Hashable {
    let number: Int
    let name: String
}

// MARK: - Timezone
struct Timezone: Codable {
    let offset, description: String
}

// MARK: - Login
struct Login: Codable {
    let uuid, username, password, salt: String
    let md5, sha1, sha256: String
}

// MARK: - Name
struct Name: Codable,Hashable {
    let title: String
    let first:String
    let last: String
}


// MARK: - Picture
struct Picture: Codable,Hashable {
    let large, medium, thumbnail: String
}
