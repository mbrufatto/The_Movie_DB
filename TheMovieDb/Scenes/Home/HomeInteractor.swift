//
//  HomeInteractor.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 16/10/19.
//  Copyright (c) 2019 Marcio Habigzang Brufatto. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol HomeBusinessLogic {
    func doRequestMovies(request: HomeScene.Load.Request)
}

protocol HomeDataStore {
    //var name: String { get set }
}

class HomeInteractor: HomeBusinessLogic, HomeDataStore {
    var presenter: HomePresentationLogic?
    var worker: HomeWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doRequestMovies(request: HomeScene.Load.Request) {
        worker = HomeWorker()
        worker?.doRequestMovies(completion: { movies in
            let response = HomeScene.Load.Response(movies: movies)
            self.presenter?.presentInitialMovies(response: response)
        })
    }
}
