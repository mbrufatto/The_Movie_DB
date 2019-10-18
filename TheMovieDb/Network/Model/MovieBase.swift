//
//  MovieBase.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 16/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

class MovieBase: Codable {
    
    var totalResults: Int
    var totalPages: Int
    var movies: [Movie] = []
    
    
    enum CodingKeys: String, CodingKey {
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case movies = "results"
    }
}
