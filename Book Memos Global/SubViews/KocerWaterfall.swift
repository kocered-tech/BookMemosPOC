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
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 10) {
            VStack {
                NoteCardView(text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure tn into a child view by using the supplied closure.")
                    .frame(width: nil, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,8)
                    .padding(.vertical,5)
                
                NoteCardView(text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure tn into a child view by using the supplied closure.")
                    .frame(width: nil, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,8)
                    .padding(.vertical,5)
                
                NoteCardView(text: "You can create a grid that displays the elements of collection by passing your collection of data and a .")
                    .frame(width: nil, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,8)
                    .padding(.vertical,5)
                Spacer()
            }
            
            VStack {
                NoteCardView(text: "n. The grid transforms each element in the collection into a child view by using the supplied closure.")
                    .frame(width: nil, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,8)
                    .padding(.vertical,5)
                NoteCardView(text: "n. The grid transforms each element in the collection into a child view by using the supplied closure.hat provides a view for each element in the collection. The grid transforms each element in the collectio")
                    .frame(width: nil, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,8)
                    .padding(.vertical,5)
                Spacer()
            }
            
            
        }
    }
}

struct KocerWaterfall_Previews: PreviewProvider {
    static var previews: some View {
        KocerWaterfall()
    }
}
