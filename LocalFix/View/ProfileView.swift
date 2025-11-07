//
//  ProfileView.swift
//  LocalFix_Connect
//
//  Created by Michal Petráš on 20/09/2025.
//

import SwiftUI

struct ProfileView: View {
    //@StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        NavigationStack{
            ScrollView(.vertical){
                VStack{
                    Header()
                    // space for profile image in a circle
                    /*VStack{
                     Text(viewModel.name)
                     Text(viewModel.email)
                     Text(viewModel.phoneNumber)
                     Text("\(viewModel.street)")
                     Text("\(viewModel.city)")
                     }*/
                    VStack{
                        Image(systemName: "person")
                            .frame(width: 200,height: 200)
                            .background(Color.blue)
                        Text("Michal Petras")
                        Text("janko.mrkva@gmail.com")
                        Text("+421 908 104 342")
                        Text("Čulenova")
                        Text("Brassislava")
                    }
                    .padding(30)
                    .bold()
                    .foregroundColor(Color.black)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    HStack{
                        // hashtagy daných profesii
                    }
                    
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    NavBarClient()
}
