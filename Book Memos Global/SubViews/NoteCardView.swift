//
//  NoteCardView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI
import Neumorphic

struct NoteCardView: View {
    
    public let text: String
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.Neumorphic.main)
                .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                
            
            VStack{
                
                HStack {
                    Text("Dune")
                        .font(.title3)
                        .foregroundColor(.primary)
                        .bold()
                        .padding()
                    Spacer()
                        
                }
                
                Text(text)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: false)
                    .padding(.horizontal)
                    Spacer()
            }
            
        }
    }
}

struct NoteCardView_Previews: PreviewProvider {
    static var previews: some View {
        NoteCardView(text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The grid transforms each element in the collection into a child view by using the supplied closure.")
    }
}
