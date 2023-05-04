//
//  ProductCard.swift
//  SweaterShopApp
//
//  Created by Stephanie Diep on 2021-12-23.
//

import SwiftUI

struct ProductCard: View {
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

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
