//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/4/26.

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About Hardcore Coffee.")
                .font(.title)
                .bold()
                .foregroundColor(.green)
            
            Text("We have coffee and snacks for the punks and rockers that live by Hardcore rock. Beware: Mosh pits in the cafe are encourged.")
            
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
