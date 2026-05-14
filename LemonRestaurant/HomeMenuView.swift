//
//  HomeMenuView.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/13/26.
//

import SwiftUI

struct HomeMenuView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Menu View"){
                    MenuView()
                }
                NavigationLink("Reservation Form"){
                    ReservationForm()
                }
                NavigationLink("Customer List"){
                    CustomerListView()
                }
            }
            .navigationTitle("Hardcore Coffee App")
        }
    }
}

#Preview {
    HomeMenuView()
}
