//
//  MenuCardView.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/11/26.
//

import SwiftUI

struct MenuCardView: View {
    let name: String
    let price: Double
    var body: some View {
        MenuItemRowView(name:name,price:price)
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius:12)
                .stroke(Color.gray.opacity(0.2),lineWidth:1)
            )
    }
}

#Preview {
    MenuCardView(name:"Head Bang Coffee",price:2.0)
    MenuCardView(name:"Metal Fruit Cup",price:0.50)
    MenuCardView(name:"Cold Brew From Hell",price:3.00)
    MenuCardView(name:"One Dozen Pit Of Doom Donuts",price:15.00)
}
