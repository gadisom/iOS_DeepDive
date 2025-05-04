//
//  Traveler.swift
//  MemoryleakSwiftUI
//
//  Created by 김정원 on 5/4/25.
//

import Foundation

class Traveler {
    var name: String
    weak var account: Account?

    init(name: String) {
        self.name = name
    }
    
    func returnSummary() -> String? {
        if let account = account {
            return "\(name) has \(account.points) points"
        }
        return nil
    }
    
    deinit {
        print("TR deinit ")
    }
}

class Account {
    var traveler: Traveler?
    var points: Int
    
    func increase100Points() {
        points += 100
    }
    
    init(traveler: Traveler, points: Int) {
        self.traveler = traveler
        self.points = points
    }

    deinit {
        print("AC deinit")
    }
}

