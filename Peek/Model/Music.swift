//
//  Music.swift
//  Peek
//
//  Created by Quentin Durand on 04/02/2021.
//

import Foundation

enum Genre: String {
    case rap,
         rapFR,
         rock,
         blues,
         rnB,
         jazz,
         electronic,
         trance,
         hardcore,
         metal,
         reggae,
         pop,
         alternative,
         variétéFR,
         dance,
         classique,
         latino,
         soulFunk,
         folk,
         indé,
         bo,
         country,
         kPop
}

struct RelativeMusic {
    var relativeCover: String
    var relativeArtist: String
    var relativeTitle: String
}

struct Description {
    var text: String
    var relativeMusic: [RelativeMusic]
}

struct Music: Identifiable {
    var id = UUID()
    var titleName: String
    var artist: String
    var year: String
    var albumName: String
    var cover: String
    var genre: Genre
    var description: Description
    var isFavorite: Bool = false
    var howManyTimesListened: Int = 0
    var music: String
}

