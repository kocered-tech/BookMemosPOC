//
//  BookScrollView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI
import Neumorphic

struct BookScrollView: View {

    
    
    var body: some View {
        
                    VStack {
                        HStack {
                            Text("Your Books")
                                .font(.title2)
                                .bold()
                                
                            Spacer()
                            Text("See All")
                                .font(.title2)
                                .foregroundColor(.secondary)
    
                                
                        }
                        
                        ScrollView(.horizontal) {
                            LazyHStack(alignment:.top){
                                ForEach(exampleBookData,id:\.self) { book in
                                    
                                    VStack {
                                    NavigationLink(
                                        destination: BookDetailView(book:book),
                                        label: {
                                            book.imageData.getImage()
                                                .resizable()
                                                .frame(width: UIScreen.screenWidth/3.2, height: UIScreen.screenWidth/3.2*1.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                                .cornerRadius(20)
                                                .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                                                .padding(6)
                                        })
                                    
                                        
                                        
                                        //SmallProgress()
                                        VStack(alignment:.leading){
                                            Text(book.title)
                                                .font(.title3)
                                                .foregroundColor(.primary)
                                            
                                            Text(book.author)
                                                .font(.body)
                                                .foregroundColor(.secondary)
                                        }.frame(width: UIScreen.screenWidth/3.2)
                                        .padding(.horizontal,4)
                                        
                                        
                                    }
                                    
                                }
                                
                            }
                        }
                        
                            
                    }.padding(.horizontal)
                    
            
        
        
    }
}

struct BookScrollView_Previews: PreviewProvider {
    static var previews: some View {
        BookScrollView()
    }
}
