//
//  ContentView.swift
//  PhotoGalleryStore
//
//  Created by Jovanna Fajardo on 4/27/23.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""

    @State private var showingLoginScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Image("JFPhotoLogo")
                        .resizable()
                        .frame(width:225, height:95)
                        .alignmentGuide(.top) { d in d[.top] }
                        .padding(30)
                    Spacer()
                }
                                

                VStack {
                    Text("Sign in below to view your personal photoshoot gallery")
                        .fontWeight(.medium)
                        .foregroundColor(Color.gray)
                        .bold()
                        .font(.system(size: 13))
                        .padding(.bottom, 40)
                        
                        
                        
                        
                    Text("Username")
                        .bold()
                        .foregroundColor(Color.gray)
                    
                    TextField("user@email.com", text: $username)
                        .font(.subheadline)
                        .padding()
                        .frame(width: 300, height: 35)
                        .background(Color.black.opacity(0.05))
                        
                        //.border(.red, width: CGFloat(wrongUsername))
                        
                        
                    Text("Password")
                        .padding(.top, 20)
                        .bold()
                        .foregroundColor(Color.gray)
                    
                    SecureField("", text: $password)
                        .font(.subheadline)
                        .padding()
                        .frame(width: 300, height: 35)
                        .background(Color.black.opacity(0.05))
                        
                       // .border(.red, width: CGFloat(wrongPassword))
                       
                    
                    Button("SIGN IN") {
                        //authenticateUser(username: username, password: password)
                       login()
                        showingLoginScreen = true
                        }
                    .foregroundColor(.gray)
                    .font(.system(size: 12))
                    .bold()
                    
                    .frame(width: 70, height: 30)
                    .background(Color(red: 0.8235294117647058, green: 0.9490196078431372, blue: 0.9333333333333333))
                    .padding(.top, 20)
                
                    
                    NavigationLink(destination: GalleryView(), isActive: $showingLoginScreen) {
                       
                    }
                }
            }.navigationBarHidden(true)
        }
    }
    
    func login(){
        Auth.auth().signIn(withEmail: username, password: password) { result, error in if error != nil {
            print(error!.localizedDescription)
        }
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
