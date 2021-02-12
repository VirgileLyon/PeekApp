//
//  User.swift
//  Peek
//
//  Created by Quentin Durand on 04/02/2021.
//

import Foundation

struct User {
    var userName: String
    var userImage: String
    var userPlatform: String
    var inscriptionDate: String
    var firstMusicIndex: Int
    var musicsListened: Int
    var favorites: [Music]
}


let FIRST_TEST_USER = User(userName: "Quentin", userImage: "quentin", userPlatform: "Deezer", inscriptionDate: "04/02/2021", firstMusicIndex: 20, musicsListened: 1, favorites: [FIRST_TEST_MUSIC])

let SECOND_TEST_USER = User(userName: "Mehdi", userImage: "", userPlatform: "Apple Music", inscriptionDate: "04/02/2021", firstMusicIndex: 10, musicsListened: 11, favorites: [FIRST_TEST_MUSIC])

let THIRD_TEST_USER = User(userName: "Virgile", userImage: "", userPlatform: "Spotify", inscriptionDate: "04/02/2021", firstMusicIndex: 15, musicsListened: 6, favorites: [FIRST_TEST_MUSIC])

let FOURTH_TEST_USER = User(userName: "Ahmed", userImage: "", userPlatform: "Youtube", inscriptionDate: "04/02/2021", firstMusicIndex: 19, musicsListened: 1, favorites: [FIRST_TEST_MUSIC])
