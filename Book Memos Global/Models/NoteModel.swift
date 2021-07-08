//
//  NoteModel.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import Foundation
import SwiftUI

struct NoteModel: Identifiable, Codable, Hashable {
    var id = UUID().uuidString
    var title: String
    var body: String
    var image: Data
    var parentBookId: String
    var savedDate: Date
}
