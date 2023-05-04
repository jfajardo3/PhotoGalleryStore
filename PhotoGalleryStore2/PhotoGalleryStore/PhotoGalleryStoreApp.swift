//
//  SweaterShopAppApp.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2021-12-23.
//

import SwiftUI
import Firebase


@main
struct PhotoGalleryStoreApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
