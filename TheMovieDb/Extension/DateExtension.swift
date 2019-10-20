//
//  DateExtension.swift
//  TheMovieDb
//
//  Created by Marcio Habigzang Brufatto on 19/10/19.
//  Copyright © 2019 Marcio Habigzang Brufatto. All rights reserved.
//

import Foundation

extension String {
    static func getFormattedDate(date: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd" // This formate is input formated .
        
        let formateDate = dateFormatter.date(from:date)!
        dateFormatter.dateFormat = "dd/MM/yyyy" // Output Formated

        return dateFormatter.string(from: formateDate)
    }
}
