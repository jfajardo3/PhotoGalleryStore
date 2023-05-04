//
//  LoginView.swift
//  SweaterShopApp
//
//  Created by Jovanna Fajardo on 4/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("JFPhotoLogo")
                        .resizable()
                        .frame(width:180, height:76)
                        .alignmentGuide(.top) { d in d[.top] }
                        .padding(30)
                    Spacer()
                }
                                

                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        
                        .padding()
                        
                        
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        
                        .border(.red, width: CGFloat(wrongUsername))
                        
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                        }
                    .foregroundColor(.gray)
                    .frame(width: 300, height: 50)
                    .background(Color(red: 0.8235294117647058, green: 0.9490196078431372, blue: 0.9333333333333333))
                    .cornerRadius(10)
                    
                    NavigationLink(destination: GalleryView(), isActive: $showingLoginScreen) {
                       
                    }
                }
            }.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "mario2021" {
            wrongUsername = 0
            if password.lowercased() == "abc123" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

