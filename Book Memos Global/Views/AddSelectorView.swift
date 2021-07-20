//
//  AddSelectorView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 20.07.2021.
//

import SwiftUI

struct AddSelectorView: View {
    @State private var selectedView = 0
    var views = [0,1]
    var body: some View {
        VStack {
            
            
            
            Group {
                if selectedView == 0 {
                    AddBookView()
                } else {
                    AddNoteView()
                }
            }
            .animation(.default)
            
            Picker("", selection: $selectedView.onChange({ (selected) in
                print(selected)
            })) {
                Text("Add Book").tag(0)
                Text("Add Note").tag(1)
            }.pickerStyle(SegmentedPickerStyle())
            .padding()
            .padding()
            
            Spacer()

        }
        
    }
}

struct AddSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        AddSelectorView()
    }
}
