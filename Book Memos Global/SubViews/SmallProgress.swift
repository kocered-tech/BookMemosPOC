//
//  SmallProgress.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI

struct SmallProgress: View {
    var body: some View {
            ZStack {
                Text("21%")
            PercentageRing(
                ringWidth: 10, percent: 44 ,
                            backgroundColor: Color.green.opacity(0.2),
                            foregroundColors: [.green, .blue]
            ).frame(width: 59, height: 59, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct SmallProgress_Previews: PreviewProvider {
    static var previews: some View {
        SmallProgress()
    }
}
