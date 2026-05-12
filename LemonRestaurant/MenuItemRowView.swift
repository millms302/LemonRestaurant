//
//  MenuItemRowView.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/11/26.
//

import SwiftUI

struct MenuItemRowView: View {
    let name: String
    let price: Double
    
    var body: some View {
        HStack{
            Text(name)
            Spacer()
            Text("$\(price,specifier:"%.2f")")
                .foregroundColor(.secondary)
            
            if price > 10{
               PremiumBadge()
            }
        }
    }
}

#Preview {
    MenuItemRowView(name:"Pizza",price:19.99)
    MenuItemRowView(name:"Pizza",price:9.99)
    MenuItemRowView(name:"Pizza",price:19.99)}
