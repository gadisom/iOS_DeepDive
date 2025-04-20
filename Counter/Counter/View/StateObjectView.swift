//
//  SharedStateObjectView.swift
//  Counter
//
//  Created by 김정원 on 4/18/25.
//

import SwiftUI

struct StateObjectView: View {
    @StateObject private var model = CounterModel()
    
    var body: some View {
        print("StateObjectView 다시 그려짐")
        return VStack {
            Text("💡@StateObject 사용 뷰.")
                .foregroundColor(.gray)
                .padding()
            Text("🔵 count: \(model.count)")
            Button("증가") {
                model.count += 1
            }
        }
    }
}

#Preview {
    StateObjectView()
}
