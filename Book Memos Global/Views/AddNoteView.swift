//
//  AddNoteView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 20.07.2021.
//

import SwiftUI

struct AddNoteView: View {
    
    @Environment(\.managedObjectContext) var moc
    @State private var title = ""
    @State private var bodyText = ""

    @State private var isImagePickerVisible = false
    
    private var sourceType = UIImagePickerController.SourceType.photoLibrary
    @State private var selectedPhoto: Image?
    
    
    var body: some View {
        Form{
            Text("Add Note")
                .font(.title2)
                .bold()
            
            TextField("Title", text: $title)
                
            TextField("Author", text: $bodyText)
            
            Button("Select Image") {
                self.isImagePickerVisible = true
            }
            .foregroundColor(.primary)
            
            
            selectedPhoto?
                .resizable()
                .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/3*1.6)
                .scaledToFit()
            
            
            
            // TextField("Author", text: $title)
            
            Button("Add Note") {
                addNote()
            }.buttonStyle(PlainButtonStyle())
            .foregroundColor(.green)
        }.accentColor(.primary)
    }
    private func addNote() {
        let note = Note(context: moc)
        note.id = UUID()
        note.title = title
        
        
        
        
        try? self.moc.save()
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
