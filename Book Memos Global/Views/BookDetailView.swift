//
//  BookDetailView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 11.06.2021.
//

import SwiftUI
import Neumorphic
struct BookDetailView: View {
    var body: some View {
        ZStack {
            Image("download")
                .resizable()
                .blur(radius: 50)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            VStack{
                

                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        
                        .foregroundColor(Color.Neumorphic.main)
                        
                        .softInnerShadow(RoundedRectangle(cornerRadius: 20), darkShadow: darkShadowColor, lightShadow: lightShadowColor, spread: 0.05, radius: 2)
                        .drawingGroup()
                        .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                        .frame(width: nil, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    HStack {
                        
                        Image("download")
                            .resizable()
                            .frame(width: UIScreen.screenWidth/3.2, height: UIScreen.screenWidth/3.2*1.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(20)
                            .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                        Spacer()
                        
                        VStack(alignment:.leading){
                            Text("Dune")
                                .font(.title3)
                                .foregroundColor(.primary)
                            
                            Text("Ernesto Schnack")
                                .font(.body)
                                .foregroundColor(.secondary)
                            ZStack {
                                Text("21%")
                                    .font(.body)
                                    .foregroundColor(.primary)
                            PercentageRing(
                                ringWidth: 10, percent: 44 ,
                                            backgroundColor: Color.yellow.opacity(0.2),
                                            foregroundColors: [.yellow, .black]
                            ).frame(width: 59, height: 59, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                        }
                        }.padding(.trailing)
                    }.padding()
                }.padding()
                
                
                //Notes
                VStack(spacing:20) {
                    
                NoteCardView(text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The grid transforms each element in the collection into a child view by using the supplied closure.")
                    
                
                NoteCardView(text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The grid transforms each element in the collection into a child view by using the supplied closure.")
                    
                
                NoteCardView(text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The grid transforms each element in the collection into a child view by using the supplied closure.")
                    
                    
                }
                .padding(.horizontal)
                
            }.padding(.top,65)
            
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
            .preferredColorScheme(.dark)
    }
}
