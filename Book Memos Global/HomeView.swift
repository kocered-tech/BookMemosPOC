//
//  HomeView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI
import Neumorphic
let darkShadowColor = Color.Neumorphic.darkShadow
let lightShadowColor = Color.Neumorphic.lightShadow
let mainColor = Color.Neumorphic.main
let secondaryColor = Color.Neumorphic.secondary

struct HomeView: View {
    @State var searchText = ""
    var body: some View {
        VStack {
            
            HStack {
                SearchBar(searchText:$searchText)
                Image(systemName: "gearshape.fill").font(.title)
                    .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
            }.padding()
            Spacer()
        }
    }
}
struct SearchBar: View {
    @Binding var searchText: String

    
    var body: some View {
        VStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(secondaryColor).font(Font.body.weight(.bold))
                            TextField("Search ...", text: $searchText)
                            .foregroundColor(secondaryColor)
                            .font(Font.body.weight(.bold))
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 30).fill(mainColor)
                            .softInnerShadow(RoundedRectangle(cornerRadius: 30), darkShadow: darkShadowColor, lightShadow: lightShadowColor, spread: 0.05, radius: 2)
                                .softOuterShadow(darkShadow: darkShadowColor, lightShadow: lightShadowColor, offset: 3, radius: 2)
                        )
                        
                    }
        .padding()
    }
    
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            //.preferredColorScheme(.dark)
    }
}
