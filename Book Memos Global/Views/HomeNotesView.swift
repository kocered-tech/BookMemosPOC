//
//  HomeNotesView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI

struct HomeNotesView: View {
    var body: some View {
        
            
                
                HStack {
                    Text("Your Notes")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Text("See All")
                        .font(.title2)
                        .foregroundColor(.secondary)
                        
                }
          
        
    }
}

struct HomeNotesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNotesView()
    }
}
