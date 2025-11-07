//
//  HomeScreen.swift
//  LocalFix_Connect
//
//  Created by Michal Petráš on 04/09/2025.
//

import SwiftUI

struct HomeView: View {
    @State var showFilter = false
    @State var showOrder = false
    var body: some View {
        NavigationStack{
            VStack{
                Header()
                ScrollView{
                    VStack{
                        HStack{
                            Button {
                                withAnimation {
                                    showFilter.toggle()
                                }
                            } label: {
                                Text("Filter")
       
                                    
                            }
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 12)
                            .frame(width: 150)
                            .background(Color.accentColor)
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.15), radius: 4, y: 2)
                            .padding()
                            Button {
                                withAnimation {
                                    showOrder.toggle()
                                }
                            } label: {
                                Text("Zoradiť")
                            }
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical, 12)
                            .frame(width: 150)
                            .background(Color.accentColor)
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.15), radius: 4, y: 2)
                            .padding()
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.blue,lineWidth: 5)
                                .frame(width: 375, height: 75,alignment: .center)
                                .shadow(color: .black.opacity(0.15), radius: 4, y: 2)
                             )
                        
                    }
                    .padding()
                }
            }
            .ignoresSafeArea(edges: .bottom)
        }
    }
}

#Preview {
    NavBarClient()
}

