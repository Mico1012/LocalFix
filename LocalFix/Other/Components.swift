//
//  Components.swift
//  LocalFix
//
//  Created by Michal Petráš on 05/09/2025.
//

import SwiftUI

struct Header: View {
    @State private var showMenu = false

    var body: some View {
        ZStack(alignment: .topTrailing) {
            HStack {
                // LEFT: Logo
                Image(.localFixIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100 , height: 60)
                
                Spacer()
                
                // RIGHT: Hamburger Button
                Button {
                    withAnimation {
                        showMenu.toggle()
                    }
                } label: {
                    Image(systemName: "line.3.horizontal")
                            .font(.system(size: 35))
                            .padding(10)
                            .foregroundColor(showMenu ? .blue : .primary) // <-- conditional color
                        
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color(.systemBackground))
            
            if showMenu {
            // Transparent background that dismisses menu
            Color.black.opacity(0.01)
                .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            showMenu = false
                                      }
                                }
                        }
                        
            // MENU OVERLAY
            if showMenu {
                
                VStack(alignment: .center, spacing: 12) {
                    NavigationLink("Home") {
                        HomeView()
                    }
                    NavigationLink("Profile") {
                        ProfileView()
                    }
                    NavigationLink("Settings") {
                        SettingsView()
                    }
                    NavigationLink("Register") {
                        SettingsView()
                    }
                    NavigationLink("Login") {
                        SettingsView()
                    }
                }
                .padding()
                .background(.thinMaterial)
                .cornerRadius(12)
                .shadow(radius: 5)
                .frame(width: 160)
                .padding(.trailing)
                .padding(.top, 100)
                .transition(.move(edge: .trailing).combined(with: .opacity))
            }
        }
    }
}

struct CustomLoginButton: View {    //To Do - zmena button
    var title: String
    var backgroundColor: Color = .blue
    var foregroundColor: Color = .white
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .bold()
                .foregroundColor(foregroundColor)   // text & icon color
                .padding()                          // padding inside
                .background(backgroundColor)        // background color
                .cornerRadius(30)                   // rounded corners
                .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}

struct NavBarPro: View{
    var body: some View{
        TabView {
            NewPostView()
                .tabItem {
                    Label("", systemImage: "plus.circle")
                }
            
            HomeView()
                .tabItem {
                    Label("", systemImage: "house")
                }
            
            MessageView()
                .tabItem {
                    Label("", systemImage: "message")
                }
        }
    }
}
struct NavBarClient: View{
    
    var body: some View{
        TabView{
            ProfileView()
                .tabItem {
                    Label("",systemImage: "person")
                }
            HomeView()
                .tabItem {
                    Label("",systemImage: "house")
                }
            MessageView()
                .tabItem {
                    Label("",systemImage: "message")
                }
        }
    }
}
#Preview {
    /*CustomLoginButton(title: "Registracia", systemImage: "person.crop.circle"){
     
     }*/
    //CustomLoginButton(title: "ahoj"){}
    //Header()
    NavBarPro()
    //NavBarClient()
}
