//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Mike Miller on 5/4/26.
//

import SwiftUI

struct ReservationForm: View {
    // constants
    let restaurantName = "Hardcore Coffee"
    let maxGuests = 10
    // variables
    // State vars: if this value change, updates the UI
    @State private var userName = ""
    @State private var phoneNumber = ""
    @State private var guestCount = 1
    @State private var previewText = ""
    @State private var children = 0
    @State private var adults = 0
    
    // Label for Guests
    func guestLabel(_ count:Int)->String{
        count == 1 ? "Guest" : "Guests"
    }
    // Adult Price: $25 Children Price: $15
    func estimateTotal(adults:Int, children:Int) -> Double{
        let adultPrice = 25.0
        let childPrice = 15.0
        
        return Double(adults) * adultPrice + Double(children) * childPrice
    }
    func isValidPhone(phone: String) -> Bool {
        let digits = phone.filter { $0.isNumber }
        return digits.count >= 10
    }
    
    var body: some View {
        Form{
            // header
            Section{
                HStack{
                    Image(systemName:"fork.knife")
                        .foregroundColor(.red)
                        .font(.title)
                    
                    VStack(alignment: .leading){
                        Text(restaurantName)
                            .font(.title3)
                            .bold()
                        
                        Text("Reservation Form")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical,4)
            }
            // reservation details
            Section(header: Text("Reservation Details")){
                TextField("Name", text: $userName)
                
                    .autocorrectionDisabled(true)
                //using a constant
                Stepper("\(guestLabel(guestCount)): \(guestCount)",value:$guestCount, in: 1...maxGuests)
                
                if guestCount >= 8 {
                    Text("Large groups, Please call the office")
                        .foregroundColor(.red)
                }
            }
            // contact information
            Section(header: Text("Contact")){
                TextField("Phone",text: $phoneNumber)
                //                    .keyboardType(.numberPad)
                
                if phoneNumber.isEmpty {
                    if isValidPhone(phone:phoneNumber){
                        Text("Phone Number is Valid")
                            .foregroundColor(.green)
                    } else {
                        Text("Enter only 10 digits")
                            .foregroundColor(.orange)
                    }
                }
            }
            
            
            // Assignment 2-3
            Section(header: Text("Optional")){
                Stepper("Children \(children)", value: $children, in:0...10)
                    if children > 0 {
                        Text("Kids Menu Available")
                            .font(.footnote)
                    }
            }            // actions
            Section(header:Text("Actions")){
                Button("Preview reservation info"){
                    previewText =
                        """
                        Name: \(userName)
                        \(guestLabel(guestCount)): \(guestCount)
                        Phone: \(phoneNumber)
                        """
                }.disabled(true)
            }
            //preview information
            Section(header: Text("Preview")){
                Text(previewText.isEmpty ? "No preview yet." : previewText)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .padding(.vertical,4)
                    .textSelection(.enabled)
            }
            
            Section(header:Text("Summary")){
                VStack{
                    HStack{
                        Text("Reservation Summary")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "text.page.badge.magnifyingglass")
                    }
                    HStack{Text("Name"); Spacer(); Text(userName)}
                    HStack{Text(guestLabel(guestCount)); Spacer(); Text("\(guestCount)")}
                    HStack{Text("children"); Spacer(); Text("\(children)")}
                    HStack{
                        Text("Estimated Total: ")
                        Spacer()
                        Text("$\(estimateTotal(adults: guestCount, children: children),specifier:"%.2f")")
                    }
                }
                .padding()
            }
        }
        .navigationTitle("Reservation")
    }
}

#Preview {
    NavigationStack{
        ReservationForm()
    }
}
