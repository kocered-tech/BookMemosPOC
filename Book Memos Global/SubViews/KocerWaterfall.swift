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
        LazyVGrid(columns: items, spacing: 10) {
            VStack {
                NoteCardView(text: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur")
                    .frame(width: nil, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal,8)
                    .padding(.vertical,5)
                    .onTapGesture {
                        withAnimation{
                            isNoteDetailVisible.toggle()
                        }
                        
                    }
                
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
        KocerWaterfall(isNoteDetailVisible: .constant(false))
    }
}
