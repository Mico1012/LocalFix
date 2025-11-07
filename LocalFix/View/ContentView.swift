//
//  ContentView.swift
//  LocalFix_Connect
//
//  Created by Michal Petráš on 04/09/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive = false
    
    var body: some View {
        
        ZStack {
            if isActive{
                HomeView()
            }else{
                SplashView()
            }
            
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    isActive.toggle()
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
