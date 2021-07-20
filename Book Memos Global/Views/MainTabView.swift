//
//  ContentView.swift
//  Book Memos Global
//
//  Created by Erdem Koçer on 10.06.2021.
//

import SwiftUI
import Neumorphic
import Combine
enum Page {
     case home
     case add
     case records
 }
struct MainTabView: View {
    @StateObject var viewRouter: ViewRouter
    @State var offset = CGSize.zero
    @State var isNoteDetailVisible = false
    
    var body: some View {
        
        
        
        NavigationView {
            ZStack {
                Color.Neumorphic.main
                
                     VStack {
                        Spacer()
                         switch viewRouter.currentPage {
                         case .home:
                            
                            
                            if isNoteDetailVisible {
                            
                                NoteDetailView(isNoteDetailVisible: $isNoteDetailVisible)
                                        .hidden(!isNoteDetailVisible)
                                  
                            } else {
                                HomeView(isNoteDetailVisible: $isNoteDetailVisible)
                            }
                            
                                
                            
                         case .add:
                            AddSelectorView()
                            
                         case .records:
                             Text("Records")
                         }
                         Spacer()
                        
                        ZStack {
                        
                        HStack {
                            TabBarIcon(viewRouter: viewRouter, assignedPage: .home, width: UIScreen.screenWidth/3, height: UIScreen.screenHeight/28, systemIconName: "books.vertical.fill", tabName: "Home")
                            
                            TabBarIcon(viewRouter: viewRouter, assignedPage: .add, width: UIScreen.screenWidth/3, height: UIScreen.screenHeight/28, systemIconName: "plus", tabName: "Liked")
                            
                            TabBarIcon(viewRouter: viewRouter, assignedPage: .records, width: UIScreen.screenWidth/3, height: UIScreen.screenHeight/28, systemIconName: "chart.bar", tabName: "Liked")
                             
                            
                         }
                        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/12)
                        .padding(.bottom,18)
                            
                        }.opacity(2 - Double(abs(offset.height / 50)))
                        .edgesIgnoringSafeArea(.bottom)
                        
                        
                     }
                
            }.edgesIgnoringSafeArea(.all)
            .navigationBarTitle(Text(""))
            .navigationBarHidden(true)
        }
        .accentColor(Color.Neumorphic.darkShadow)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(viewRouter: ViewRouter())
            //.preferredColorScheme(.dark)
    }
}

struct TabBarIcon: View {
    @StateObject var viewRouter: ViewRouter
    let assignedPage: Page
    let width, height: CGFloat
    let systemIconName, tabName: String
    @State var toggleIsOn = false
    
    @State private var username = ""
    

    
    
    func bindingToggle() -> Binding<Bool> {
        return Binding { () -> (Bool) in
            
            if viewRouter.currentPage == assignedPage  {return true} else {return false}
            print("get called")
            
        } set: { (value) in
            viewRouter.currentPage = assignedPage
            if viewRouter.currentPage == assignedPage  {toggleIsOn = true} else {toggleIsOn = false}
            print("set called")
        }

    }
    

    
     var body: some View {
        
            Toggle(isOn: bindingToggle(), label: {
                    
                        Image(systemName: systemIconName)
                            .font(.title)
                            .foregroundColor(viewRouter.currentPage != assignedPage ? .gray : .pink)
                          
                        })
                
            
            .softToggleStyle(RoundedRectangle(cornerRadius: 8), pressedEffect: .hard)
            
            .foregroundColor(.blue)
                .padding()
                .cornerRadius(8)
                .frame(width: width, height: height, alignment: .center)

     }
 }

struct PlusTabBarIcon: View {
     
     let width, height: CGFloat
     let systemIconName, tabName: String
     
     
     var body: some View {
        ZStack {
            Circle()
                 .foregroundColor(.white)
                 .frame(width: width/7, height: width/7)
                 .shadow(radius: 4)
             Image(systemName: "plus.circle.fill")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: width/7-6 , height: width/7-6)
                 .foregroundColor(Color("DarkPurple"))
         }.offset(y: -height/8/2)
     }
 }
