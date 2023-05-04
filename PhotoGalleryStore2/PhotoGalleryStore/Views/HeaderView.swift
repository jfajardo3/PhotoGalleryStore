//
//  HeaderView.swift
//  SweaterShopApp
//
//  Created by Jovanna Fajardo on 4/26/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Image("JFPhotoLogo")
                .resizable()
                .frame(width: 180, height: 76, alignment: .center)
                .scaledToFit()
                .offset(y:100)
            Spacer(minLength: 0)
                .padding(30)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
