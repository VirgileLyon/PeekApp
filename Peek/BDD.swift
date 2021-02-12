//
//  BDD.swift
//  Peek
//
//  Created by Quentin Durand on 04/02/2021.
//

import Foundation

struct BDD {
    var tabMusic: [Music]
}

let FIRST_TEST_RELATIVEMUSIC = RelativeMusic(relativeCover: "cover", relativeArtist: "artiste", relativeTitle: "titre")
let SECOND_TEST_RELATIVEMUSIC = RelativeMusic(relativeCover: "cover", relativeArtist: "artiste", relativeTitle: "titre")


let DESCRIPTION_TEST = Description(text: "description", relativeMusic: [FIRST_TEST_RELATIVEMUSIC, SECOND_TEST_RELATIVEMUSIC])


let FIRST_TEST_MUSIC = Music(titleName: "Ratpi World",
                             artist: "Booba",
                             year: "2021",
                             albumName: "Ratpi World - Single",
                             cover: "ratpi-world-img",
                             genre: .rapFR,
                             description: DESCRIPTION_TEST,
                             music: "ratpi")

let SECOND_TEST_MUSIC = Music(titleName: "Attitude",
                              artist: "Lewis OfMan",
                              year: "2020",
                              albumName: "Attitude - Single",
                              cover: "attitude-img",
                              genre: .electronic,
                              description: DESCRIPTION_TEST,
                              music: "attitude")

let THIRD_TEST_MUSIC = Music(titleName: "You See Me",
                             artist: "Mandragora - La Ptite Fumée",
                             year: "2018",
                             albumName: "You See Me - Single",
                             cover: "you-see-me-img",
                             genre: .trance,
                             description: DESCRIPTION_TEST,
                             music: "youSeeMe")

let FOURTH_MUSIC_TEST = Music(titleName: "Otis",
                              artist: "Kanye West & Jay-Z",
                              year: "2011",
                              albumName: "Watch the Throne",
                              cover: "otis-img",
                              genre: .rap,
                              description: DESCRIPTION_TEST,
                              music: "otis")

let FIFTH_MUSIC_TEST = Music(titleName: "Trick Me",
                              artist: "Kelis",
                              year: "2003",
                              albumName: "Taste Me",
                              cover: "trick-me-img",
                              genre: .rnB,
                              description: DESCRIPTION_TEST,
                              music: "trickMe")

let SIXTH_MUSIC_TEST = Music(titleName: "Somebody That I Used to Know",
                              artist: "Gotye",
                              year: "2012",
                              albumName: "Mirrors",
                              cover: "somebody-that-i-used-to-know-img",
                              genre: .pop,
                              description: DESCRIPTION_TEST,
                              music: "somebody")


let LIST_TEST_MUSIC: [Music] = [
    FIRST_TEST_MUSIC,
    SECOND_TEST_MUSIC,
    THIRD_TEST_MUSIC,
    FOURTH_MUSIC_TEST,
    FIFTH_MUSIC_TEST,
    SIXTH_MUSIC_TEST
]


