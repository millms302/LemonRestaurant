//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/6/26.
//

import SwiftUI

struct MenuView: View {
    @State private var showMessage = false
    @State private var showAffordableOnly = false
    @State private var showDesserts = false
    // Dictionary for the Menu
    let menuItems = [
        "Head Bang Coffee" : 2.00,
        "Yellow Snow Lemonade" : 1.50,
        "Fizzy Water" : 2.00,
        "Boston Harbor's Tea" : 2.00,
        "Cold Brew From Hell" : 3.00,
        "Mosh Pit Muffin" : 4.00,
        "Rancid Cookie" : 3.00,
        "Metal Fruit Cup" : 0.50,
        "Wall Of Death Sourdough" : 3.00,
        "Lars' Hometown Danish" : 4.00,
        "One Dozen Pit of Doom Donuts" : 15.00,
        "Pit of Doom Donut" : 2.50
    ]
    // Computed Properties
    var sortedMenu: [(name: String, price:Double)]{
        menuItems
            .sorted{ $0.key < $1.key }// array of (key,value)
            .map{ (name: $0.key, price: $0.value) } //rename
        
    }
    
    var displayMenu: [(name: String, price:Double)]{
        if showAffordableOnly {
            return sortedMenu.filter {$0.price < 8}
        }else{
            return sortedMenu
        }
    }
    
    // Functions
    
    func getTotalItems() -> Int{
        menuItems.count
    }
    func getHighestPrice() -> Double {
        menuItems.values.max()  ?? 0.0
    }
    func getLowestPrice() -> Double {
        menuItems.values.min() ?? 0.0
    }
    
    var body: some View {
        // 1. Convert the Dictionary into a Sorted Array
        //let sortedMenu = menuItems.sorted { $0.key < $1.key }
        //
        VStack{
            // Header
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:90)
                Text("The Menu")
                    .font(.title2)
                    .bold()
                    .underline()
                VStack{
                    Toggle("Show Welcome Message: ", isOn: $showMessage)
                    Toggle("Show Affordable Only: ", isOn: $showAffordableOnly)
                }
            }
            if showMessage{
                Text("Welcome to Hardcore Coffee")
                    .font(.caption)
            }
            if showAffordableOnly{
                Text("Explore These Affordable Options")
                    .font(.caption)
                }
            }
            
            Button("View Desserts"){
                showDesserts = true
            }
            .foregroundColor(.black)
            .padding()
            .background(Color.green.opacity(2.0))
            .cornerRadius(10)
            .sheet(isPresented: $showDesserts){
                DessertView()
        }
        //list
        List{
            ForEach(displayMenu, id: \.name){ name, price in
              //  HStack{
              //      Text(name)
              //          .font(.headline)
              //      Spacer()
              //      Text("$\(price,specifier:"%.2f")")
              //          .foregroundColor(.secondary)
              //  }
              //  .padding(.vertical,5)
                MenuItemRowView(name:name,price:price)
            }
        }
        
        // Footer
        Section{
            VStack{
                HStack{
                    Text("Total Items: \(getTotalItems())")
                }
                HStack{
                    Text("Highest Price: \(getHighestPrice())")
                }
                HStack{
                    Text("The Lowest Price: \(getLowestPrice())")
                }
                
            }
        }
    }
}

#Preview{
    MenuView()
}
