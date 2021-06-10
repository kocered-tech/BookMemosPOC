//
//  NoteModel.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import Foundation
import SwiftUI

struct NoteModel: Identifiable, Codable {
    var id: Int
    var title: String
    var body: String
    var image: Data
    var parentBookId: Int
    var savedDate: Date
}
