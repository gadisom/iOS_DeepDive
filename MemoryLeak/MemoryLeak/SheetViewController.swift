//
//  SheetViewController.swift
//  MemoryLeak
//
//  Created by 김정원 on 5/4/25.
//

import UIKit

class SheetViewController: UIViewController {
    
    var traveler: Traveler?

    override func viewDidLoad() {
        super.viewDidLoad()
        let t = Traveler(name: "정원")
        let a = Account(traveler: t, points: 1000)
        t.account = a
        self.traveler = t
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("dd")
    }

}
