//
//  CarouselCard.swift
//  PhotoGalleryStore
//
//  Created by Jovanna Fajardo on 5/3/23.
//

import SwiftUI

struct CarouselCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
                    ZStack(alignment: .bottom) {
                        Image(product.image)
                            .resizable()
                            
                            .frame(width: 180)
                            .scaledToFit()
                        }
            
                    .frame(width: 180, height: 120)
                    .shadow(radius: 3)
                    
                    Button {
                        cartManager.addToCart(product: product)
                            
                    } label: {
                        
                        Text("+")
                            .font(.caption2).bold()
                            .foregroundColor(.white)
                            .frame(width: 15, height: 15)
                            .background(Color(.gray))
                            .cornerRadius(50)
                            
                            .padding(6)
                    
            }
        }
    }
}

struct CarouselCard_Previews: PreviewProvider {
    static var previews: some View {
        CarouselCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
