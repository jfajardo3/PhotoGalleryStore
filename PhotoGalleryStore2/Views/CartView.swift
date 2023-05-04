//
//  CartView.swift
//  PhotoGalleryStore
//
//  Created by Jovanna Fajardo on 4/27/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack {
            Image("JFPhotoLogo")
                .resizable()
                .frame(width:180, height:76)
                .alignmentGuide(.top) { d in d[.top] }
                .padding(30)
            Spacer()
            
            Text("Your Shopping Cart")
                .font(.title)
                .fontWeight(.medium)
                .foregroundColor(Color.gray)
                .padding(.top, 30)
            Divider()
                .frame(height: 2)
                .overlay(.gray)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                
            
            ScrollView {
                if cartManager.paymentSuccess {
                    Text("Thank you for your purchase. You will receive your digital files to the email you used to sign in.")
                        .padding()
                } else {
                    if cartManager.products.count > 0 {
                        ForEach(cartManager.products, id: \.id) { product in
                            ProductRow(product: product)
                                .foregroundColor(Color.gray)
                                .font(.subheadline)
                        }
                        
                        HStack {
                            Text("Your cart total is")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("$\(cartManager.total).00")
                                .bold()
                                .foregroundColor(Color.gray)
                        }
                        .padding()
                        
                        PaymentButton(action: cartManager.pay)
                            .padding()
                        
                    } else {
                        Text("Your cart is empty.")
                            .foregroundColor(Color.gray)
                    }
                }
            }
            
            .padding(.top)
            .onDisappear {
                if cartManager.paymentSuccess {
                    cartManager.paymentSuccess = false
                }
        }
            
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
