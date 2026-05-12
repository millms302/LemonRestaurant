//
//  PremiumBadge.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/11/26.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        HStack{
            Image(systemName:"star.fill")
                .foregroundColor(.black)
            Text("Premium")
                .font(.caption)
        }
        .padding(6)
        .background(Color.red)
        .cornerRadius(6)
    }
}
 

#Preview {
    PremiumBadge()
}
