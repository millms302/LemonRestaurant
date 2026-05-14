//
//  CustomerListView.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/13/26.
//

import SwiftUI

struct CustomerListView: View {
    @State private var customers: [CustomerModel] = [
        CustomerModel(name: "Dave", email: "dave@nirvana.com", visits: 6),
        CustomerModel(name: "Kurt", email: "kurt@nirvana.com", visits: 9),
        CustomerModel(name: "Krist", email: "krist@nirvana.com", visits: 5),
    ]
    
    var body: some View {
        List(customers) { customer in
            Text(customer.summary())
            
        }
    }
}

#Preview {
    CustomerListView()
}
