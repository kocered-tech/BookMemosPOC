//
//  NoteDetailView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 11.06.2021.
//

import SwiftUI
import Neumorphic
struct NoteDetailView: View {
    @Namespace private var animation
    init() {
            UITextView.appearance().backgroundColor = .clear
            UITextView.appearance().textAlignment = NSTextAlignment.justified
        }
        
    var body: some View {
        
            
        ZStack {
            Color.Neumorphic.main
            
            VStack(alignment:.leading) {
                    
                ZStack {
                    
                    Rectangle()
                        .frame(width: UIScreen.screenWidth, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.Neumorphic.main)
                    HStack {
                            
                                
                                Text("Doloremque Laudantium")
                                    .font(Font.custom("Avenir", size: 28))
                                    .bold()
                                    //.padding()
                            
                            
                            Spacer()
                            
                            
                    }
                }
                    
                    ScrollView {
                        
                        TextEditor(text: .constant("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur"))
                            .font(Font.custom("Avenir", size: 20))
                            .fixedSize(horizontal: false, vertical: true)
                    }
                        
                        

                        
                }.onAppear{
                    UITextView.appearance().backgroundColor = .clear
                    UITextView.appearance().textAlignment = NSTextAlignment.justified
                
                }.padding(.top)
            .padding()
        }
        
        
    }
}

struct NoteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NoteDetailView()
    }
}
