//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/4/26.

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About Little Lemon.")
                .font(.title)
                .bold()
                .foregroundColor(.green)
            
            Text("Lorem ipsum dolor sit amet consectetur adipiscing elit, potenti consequat aliquam pharetra a egestas vitae, tellus bibendum auctor ornare conubia leo.")
            
            HStack {
                Image(systemName: "fork.knife")
                Image(systemName: "leaf")
                Image(systemName: "smartphone")
            }
            .foregroundColor(.yellow)
            .font(.system(size: 30))
        }
        .padding()
        .multilineTextAlignment(.center)
    }
}

#Preview {
    AboutView()
}
