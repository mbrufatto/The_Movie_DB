//
//  MoviesView.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 16/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit

class MoviesView: UIView {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func setupComponents() {
        backgroundColor = .white
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("MoviesView", owner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
