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
    
    private let baseURL = "https://api.themoviedb.org/3/movie/"
    private let api_key = "c5850ed73901b8d268d0898a8a9d8bff"
    
    func fetchMovies(page: Int = 1, completion: @escaping(MovieBase) -> Void) {
        
        let url = URL(string: baseURL + "upcoming?language=en-US&api_key=\(api_key)&page=\(page)")

        let dataTask = URLSession.shared.dataTask(with: url!) { (data, response, error) in

            DispatchQueue.main.async {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodeMovies = try decoder.decode(MovieBase.self, from: data)
                        completion(decodeMovies)
                    } catch {
                        print(error.localizedDescription)
                        let decodeMovieBase = try! decoder.decode(MovieBase.self, from: Data("""
                                                                                        {"total_results": 0,
                                                                                        "total_pages": 0,
                                                                                        "results: []}
                                                                                     """.utf8))
                        completion(decodeMovieBase)
                    }
                }
            }
        }
        dataTask.resume()
    }
    
    func fetchMovie(movieId: Int, completion: @escaping(Movie) -> Void) {
        
        let url = URL(string: baseURL + "\(movieId)?api_key=\(api_key)&language=en-US")
        
        let dataTask = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            DispatchQueue.main.async {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodeMovie = try decoder.decode(Movie.self, from: data)
                        completion(decodeMovie)
                    } catch {
                        print(error.localizedDescription)
                        completion(Movie())
                    }
                }
            }
        }
        dataTask.resume()
    }
}



