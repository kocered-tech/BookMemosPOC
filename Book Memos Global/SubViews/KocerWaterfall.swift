//
//  KocerWaterfall.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI

struct KocerWaterfall: View {
    var items: [GridItem] {
        Array(repeating: .init(.adaptive(minimum: 130, maximum:200)), count: 2)
    }
    
    @Binding var isNoteDetailVisible: Bool
    
    var body: some View {
        LazyVStack(spacing:15) {
            
            ForEach(exampleNoteData) { note in
                NoteCardView(note: note, text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The grid transforms each element in the collection into a child view by using the supplied closure.")
            
            }
            
        }
    }
}

struct KocerWaterfall_Previews: PreviewProvider {
    static var previews: some View {
        KocerWaterfall(isNoteDetailVisible: .constant(false))
    }
}
