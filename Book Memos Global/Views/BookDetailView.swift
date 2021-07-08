//
//  BookDetailView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 11.06.2021.
//

import SwiftUI
import Neumorphic
struct BookDetailView: View {
    
    public var book: BookModel
    @State var primaryColor = Color.black
    
    var body: some View {
        ZStack {
            book.imageData.getImage()
                .resizable()
                .blur(radius: 50)
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            ScrollView{
                

                ZStack {
                    RoundedRectangle(cornerRadius: 25)             
                        .foregroundColor(Color.Neumorphic.main)
                        .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                        .frame(width: nil, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    HStack {
                        
                        book.imageData.getImage()
                            .resizable()
                            .frame(width: UIScreen.screenWidth/3.2, height: UIScreen.screenWidth/3.2*1.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .cornerRadius(20)
                            .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                        Spacer()
                        
                        VStack(alignment:.leading){
                            Text(book.title)
                                .font(.title3)
                                .foregroundColor(.primary)
                            
                            Text(book.author)
                                .font(.body)
                                .foregroundColor(.secondary)
                            ZStack {
                                
                            PercentageRing(
                                ringWidth: 10, percent: 44 ,
                                            backgroundColor: primaryColor.opacity(0.5),
                                foregroundColors: [primaryColor, Color.Neumorphic.lightShadow]
                            )
                            .softOuterShadow()
                            .frame(width: 59, height: 59, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                Text("21%")
                                    .font(.body)
                                    .foregroundColor(.primary)
                                
                        }
                        }.padding(.trailing)
                    }.padding()
                }.padding()
                
                
                //Notes
                
                LazyVStack(spacing:15) {
                    
                    ForEach(exampleNoteData) { note in
                        NoteCardView(note: note, text: "You can create a grid that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The grid transforms each element in the collection into a child view by using the supplied closure.")
                            
                    
                    }
                    
                }.padding()
                
            }.padding(.top)
        }.onAppear{
            //Bad code
            DispatchQueue.main.async {
                self.primaryColor = Color(UIImage(data: book.imageData)!.averageColor!)
            }
            
        }
        
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: exampleBook1)
            .preferredColorScheme(.dark)
    }
}
