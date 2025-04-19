//
//  CounterViewModel.swift
//  Counter
//
//  Created by 김정원 on 4/18/25.
//

import Foundation
import SwiftUI

class CounterModel: ObservableObject {
    @Published var count: Int = 0 {
        didSet {
            print("🟡 [CounterModel] count changed to \(count)")
        }
    }
}
