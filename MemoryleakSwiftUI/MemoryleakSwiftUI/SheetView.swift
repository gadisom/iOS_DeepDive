//
//  SheetView.swift
//  MemoryleakSwiftUI
//
//  Created by 김정원 on 5/4/25.
//

import SwiftUI

struct SheetView: View {
    
    @State private var traveler: Traveler?
    init() {
        let t = Traveler(name: "Garden")
        let a = Account(traveler: t, points: 1000)
        t.account = a
    }
    
    var body: some View {
        VStack {
            Text("Sheet View")
        }
    }
}
