//
//  SplashScreen.swift
//  LocalFix_Connect
//
//  Created by Michal Petráš on 04/09/2025.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            //Color.black.edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                Image("LocalFix_icon")
                    .resizable()
                    .frame(width: 150,height: 125)
                    .scaledToFit()
                HStack{
                    Spacer()
                    Text("Vždy nablízku")
                        .font(.title)
                        .foregroundStyle(Color.blue)
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    SplashView()
}
