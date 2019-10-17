//
//  UIImageViewExtension.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 17/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import UIKit
import AlamofireImage

extension UIImageView {    
    func getImage(urlImage: String) {
        self.af_setImage( withURL: URL(string: urlImage)!,
                          placeholderImage: UIImage(named: "alfred.jpeg"),
                          imageTransition: .crossDissolve(0.2),
                          completion: { response in
                            self.image = response.result.value
        })
    }
}
