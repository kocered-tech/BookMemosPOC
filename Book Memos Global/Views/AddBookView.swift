//
//  AddBookView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 8.07.2021.
//

import SwiftUI
import CodeScanner

struct AddBookView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var title = ""
    @State private var author = ""
    @State private var total = ""
    @State private var current = ""
    @State private var isImagePickerVisible = false
    
    private var sourceType = UIImagePickerController.SourceType.camera
    @State private var selectedPhoto: Image?
    
    // Barcode Scanner
    
    @State var isPresentingScanner = false
    @State var scannedCode: String?
    
    init(){
            UITableView.appearance().backgroundColor = .clear
        }
    
    var body: some View {
        
            Form{
                Text("Add Book")
                    .font(.title2)
                    .bold()
                
                Button("Scan Code") {
                    
                    self.isPresentingScanner = true
                    }
                .sheet(isPresented: $isPresentingScanner) {
                }
                
                TextField("Title", text: $title)
                    
                TextField("Author", text: $author)
                
                TextField("Total Page Count", text: $total)
                    .keyboardType(.numberPad)
                TextField("Current Page Progress", text: $current)
                    .keyboardType(.numberPad)
                
                Button("Select Image") {
                    self.isImagePickerVisible = true
                }
                
                if !checkPageCount() && total != "" && current != "" {
                    
                        Text("Current progress cannot be larger than total pages")
                            .foregroundColor(.red)
                            .font(.body)
                    
                    
                }
                selectedPhoto?
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.width/3*1.6, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
                
                
                
                // TextField("Author", text: $title)
                
                Button("Add Book") {
                    addBook()
                }.buttonStyle(PlainButtonStyle())
                .foregroundColor(.green)
                .disabled(!checkPageCount())
                
            }
            .accentColor(.primary)
            .fullScreenCover(isPresented: $isImagePickerVisible, content: {
                ImagePicker(sourceType: sourceType) {photo in
                    print("Returned")
                    if let photo = photo {
                        self.selectedPhoto = Image(uiImage: photo)
                    }
                    self.isImagePickerVisible = false
                    
                }
        })
        
    }
    
    var scannerSheet : some View {
            CodeScannerView(
                codeTypes: [.qr],
                completion: { result in
                    if case let .success(code) = result {
                        self.scannedCode = code
                        self.isPresentingScanner = false
                    }
                }
            )
        }
    
    
    private func addBook() {
        let book = Book(context: moc)
        book.id = UUID()
        book.title = title
        book.author = author
        book.total = Int16(total) ?? 0
        book.current = Int16(current) ?? 0
        
        
        
        
        try? self.moc.save()
    }
    
    private func checkPageCount() -> Bool{
        if let total = Int16(total) {
            if let current = Int16(current) {
                return total>=current
            }
            return false
        }
        return false
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView()
    }
}
