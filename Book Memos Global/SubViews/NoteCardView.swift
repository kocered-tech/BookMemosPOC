//
//  NoteCardView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI
import Neumorphic

struct NoteCardView: View {
    
    @Namespace private var animation
    public var note: NoteModel
    
    public let text: String
    
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.Neumorphic.main)
                .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                
            
            VStack{
                
                HStack {
                    Text(note.title)
                        .font(.title3)
                        .foregroundColor(.secondary)
                        .bold()
                        
                    Spacer()
                    Text("To Kill a Mocking Bird")
                        .foregroundColor(.secondary)
                        .font(.system(size: 16))
                        .italic()
                        
                }.padding(.bottom)
                
                Text(note.body)
                    .font(.body)
                    //.font(Font.custom("Avenir", size: 16))
                    .foregroundColor(.primary)
                    .lineLimit(nil)
                    //.fixedSize(horizontal: false, vertical: false)
                    //.padding(.horizontal)
                    //Spacer()
            }.padding()
            
        }
    }
}

struct NoteCardView_Previews: PreviewProvider {
    static var previews: some View {
        NoteCardView(note: exampleNote1, text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The grid transforms each element in the collection into a child view by using the supplied closure.")
    }
}
