//  CustomerModel.swift
//
//  Created by Mike Miller on 5/13/26.
//
import Foundation

class CustomerModel: Identifiable {
    let id = UUID()
    var name: String
    var email: String
    var visits: Int
    
    init(name: String, email: String, visits: Int) {
        self.name = name
        self.email = email
        self.visits = visits
    }
    
    func summary() -> String {
        return "\(name) - Visits: \(visits)"
    }
}
