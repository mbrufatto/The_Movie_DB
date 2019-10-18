//
//  Movie.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 16/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

class Movie: Codable {
    
    var id: Int = 0
    var popularity: Double = 0.0
    var voteCount: Int = 0
    var posterPath: String = ""
    var adult: Bool = false
    var backdropPath: String = ""
    var originalLanguage: String = ""
    var originalTitle: String = ""
    var genres: [Genre] = []
    var title: String = ""
    var voteAverage: Double = 0.0
    var overview: String = ""
    var releaseDate: String = ""
    
    enum CodingKeys: String, CodingKey {
        case id
        case popularity
        case voteCount = "vote_count"
        case posterPath = "poster_path"
        case adult
        case backdropPath = "backdrop_path"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case title
        case voteAverage = "vote_average"
        case overview
        case releaseDate = "release_date"
        case genres
    }
    
    init() {}
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try! container.decode(Int.self, forKey: .id)
        popularity = try! container.decode(Double.self, forKey: .popularity)
        voteCount = try! container.decode(Int.self, forKey: .voteCount)
        posterPath = try! container.decode(String.self, forKey: .posterPath)
        adult = try! container.decode(Bool.self, forKey: .adult)
        backdropPath = try! container.decode(String.self, forKey: .backdropPath)
        originalTitle = try! container.decode(String.self, forKey: .originalTitle)
        originalLanguage = try! container.decode(String.self, forKey: .originalLanguage)
        title = try! container.decode(String.self, forKey: .title)
        voteAverage = try! container.decode(Double.self, forKey: .voteAverage)
        overview = try! container.decode(String.self, forKey: .overview)
        releaseDate = try! container.decode(String.self, forKey: .releaseDate)
        genres = try! container.decodeIfPresent([Genre].self, forKey: .genres) ?? []
    }
    
}
