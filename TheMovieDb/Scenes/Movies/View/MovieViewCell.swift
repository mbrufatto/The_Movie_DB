//
//  MovieViewCell.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 16/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit

class MovieViewCell: UICollectionViewCell {

    static let cellIdentifier = "movieCell"
    
    @IBOutlet weak var poster: UIImageView!
    
    private let baseUrlImage = "https://image.tmdb.org/t/p/original"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func loadPoster(posterPath: String) {
        poster.getImage(urlImage: baseUrlImage + posterPath)
    }
}
