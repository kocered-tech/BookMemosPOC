//
//  BookModel.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import Foundation
import SwiftUI

struct BookModel: Identifiable, Codable,Hashable {
    var id = UUID().uuidString
    var title: String
    var author: String
    var imageData: Data
    var readPages: Int
    var totalPages: Int
    var startDate: Date
    
}

