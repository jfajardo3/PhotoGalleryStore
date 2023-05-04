//
//  ContentView.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2021-12-23.
//

import SwiftUI

struct GalleryView: View {
    
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 130) // Move the LazyVGrid down by 130 pixels
            }
            
            
            .background(
                ZStack(alignment: .top) {
                    Color.clear // Add a clear color background to the ZStack
                    Image("JFPhotoLogo")
                        .resizable()
                        .frame(width: 180, height: 76)
                        .padding(.top, -20) // Move the Image up by 65 pixels
                }
            )
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: CartView().environmentObject(cartManager)) {
                        Image(systemName: "cart.fill")
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}

