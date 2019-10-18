//
//  MovieView.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 17/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit

class MovieView: UIView {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var genres: UILabel!
    @IBOutlet weak var overview: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    
    var movie: Movie? {
        didSet {
            movieName.text = movie?.originalTitle
            guard let poster = movie?.backdropPath else { return }
            moviePoster.getImage(urlImage: "https://image.tmdb.org/t/p/original\(poster)")
            releaseDate.text = movie?.releaseDate
            formatterText(overview: (movie?.overview)!)
            loadGenres(movie: movie!)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("MovieView", owner: self, options: nil)
        addSubview(view)
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    private func loadGenres(movie: Movie) {
        var genres = ""
        for genre in movie.genres {
            genres.append(genre.name)
            genres.append(" - ")
        }
        self.genres.text = String(genres.dropLast(2))
    }
    
    func formatterText(overview: String) {
        let attributedString = NSMutableAttributedString(string: overview)
        let mutableParagraphStyle = NSMutableParagraphStyle()
        mutableParagraphStyle.lineSpacing = 10
        
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: mutableParagraphStyle, range: NSMakeRange(0, attributedString.length))
        
        self.overview.attributedText = attributedString
    }
}
