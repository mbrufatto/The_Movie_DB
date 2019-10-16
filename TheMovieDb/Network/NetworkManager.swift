//
//  NetworkManager.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 16/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let baseURL = "https://api.themoviedb.org/3/movie/upcoming?language=en-US&api_key=c5850ed73901b8d268d0898a8a9d8bff&page="
    
    func fetchMovies(page: Int = 1, completion: @escaping([Movie]) -> Void) {
        
        let url = URL(string: baseURL + "\(page)")

        let dataTask = URLSession.shared.dataTask(with: url!) { (data, response, error) in

            DispatchQueue.main.async {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodeMovies = try decoder.decode(MovieBase.self, from: data)
                        completion(decodeMovies.movies)
                    } catch {
                        print(error.localizedDescription)
                        completion([Movie]())
                    }
                }
            }
        }
        dataTask.resume()
    }
}



