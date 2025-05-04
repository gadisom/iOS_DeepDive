//
//  ViewController.swift
//  MemoryLeak
//
//  Created by 김정원 on 5/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

class Traveler {
    var name: String
    var account: Account?

    init(name: String) {
        self.name = name
        print("Traveler init")
    }
    
    deinit {
        print("Traveler deinit")
    }
    
    func returnSummary() -> String? {
        if let account = account {
            return "\(name) has \(account.points) points"
        }
        return nil
    }

}

class Account {
    var traveler: Traveler
    var points: Int
    
    func increase100Points() {
        points += 100
    }
    
    init(traveler: Traveler, points: Int) {
        self.traveler = traveler
        self.points = points
        print("Account init")
    }
    
    deinit {
        print("Account deinit")
    }
    
}

