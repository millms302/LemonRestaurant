//
//  DessertView.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/9/26.
//

import SwiftUI

struct DessertView: View {
    
    // Dictionary
    let dessertMenu = [
        "Rancid Cookie": 3.00,
        "Lars' Hometown Danish": 4.00,
        "Pit of Doom Donut": 2.50
    ]
    
    //sortedDesserts
    var body: some View {
        
        
        List{
            ForEach(dessertMenu.sorted { $0.value < $1.value },
                    id:\.key){ name, price in
                    Text("\(name) - \(price)")
            }
        }
    }
}

#Preview {
    DessertView()
}
