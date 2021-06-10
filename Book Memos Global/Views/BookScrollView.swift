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
                            HStack{
                                ForEach(1..<5){_ in
                                    VStack {
                                    Image("download")
                                        .resizable()
                                        .frame(width: UIScreen.screenWidth/3.2, height: UIScreen.screenWidth/3.2*1.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(20)
                                        .softInnerShadow(RoundedRectangle(cornerRadius: 20), darkShadow: darkShadowColor, lightShadow: lightShadowColor, spread: 0.05, radius: 1)
                                        .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                                        .padding(6)
                                        //SmallProgress()
                                        VStack(alignment:.leading){
                                            Text("Dune")
                                                .font(.title3)
                                                .foregroundColor(.primary)
                                            
                                            Text("Ernesto Schnack")
                                                .font(.body)
                                                .foregroundColor(.secondary)
                                        }.padding(.horizontal,4)
                                        
                                    }
                                    
                                }
                                
                            }
                        }
                        HomeNotesView()
                            .padding(.vertical)
                        
                        KocerWaterfall()
                            
                    }.padding(.horizontal)
            
        
        
    }
}

struct BookScrollView_Previews: PreviewProvider {
    static var previews: some View {
        BookScrollView()
    }
}
