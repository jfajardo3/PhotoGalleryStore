//
//  ImageCarouselView.swift
//  SweaterShopApp
//
//  Created by Jovanna Fajardo on 4/26/23.
//

import SwiftUI

struct ImageCarouselView: View {
    @Environment(\.presentationMode) var presentationMode
    var images: [String]
    
    @State private var currentIndex: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .padding()
                })
            }
            Spacer()
            Image(images[currentIndex])
                .resizable()
                .scaledToFit()
            Spacer()
            HStack {
                Button(action: {
                    if currentIndex > 0 {
                        currentIndex -= 1
                    }
                }, label: {
                    Image(systemName: "chevron.left.circle.fill")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .padding()
                })
                Spacer()
                Button(action: {
                    if currentIndex < images.count - 1 {
                        currentIndex += 1
                    }
                }, label: {
                    Image(systemName: "chevron.right.circle.fill")
                        .foregroundColor(Color.white)
                        .font(.title)
                        .padding()
                })
            }
            .padding()
        }
        .background(Color.black)
        .ignoresSafeArea()
    }
}

