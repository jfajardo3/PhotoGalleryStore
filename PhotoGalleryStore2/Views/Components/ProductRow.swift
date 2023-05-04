//
//  ProductRow.swift
//  PhotoGalleryStore
//
//  Created by Jovanna Fajardo on 4/27/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(Color.gray)

                Text("$\(product.price)")
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(Color.gray)
            }
            
            Spacer()

            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[2])
            .environmentObject(CartManager())
    }
}
