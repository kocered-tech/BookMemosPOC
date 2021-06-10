//
//  KocerWaterfall.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI

struct KocerWaterfall: View {
    var items: [GridItem] {
      Array(repeating: .init(.adaptive(minimum: 120)), count: 2)
    }
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 10) {
            VStack {
                NoteCardView(text:"You can create a grid that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The grid transforms each element in the collection into a child view by using the supplied closure.").padding(.horizontal,5)
            }
            
            VStack {
                NoteCardView(text:"n. The grid transforms each element in the collection into a child view by using the supplied closure.").padding(.horizontal,5)
            }
            
            
        }.padding()
    }
}

struct KocerWaterfall_Previews: PreviewProvider {
    static var previews: some View {
        KocerWaterfall()
    }
}
