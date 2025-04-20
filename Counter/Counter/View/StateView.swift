//
//  StateView.swift
//  Counter
//
//  Created by 김정원 on 4/19/25.
//

import SwiftUI

struct StateView: View {
    @State private var count = 0

    var body: some View {
        print("StateView 다시 그려짐")
        return VStack {
            Text("💡@State 사용 뷰.")
                .foregroundColor(.gray)
                .padding()
            Text("🔵 count: \(count)")
            Button("증가") {
                count += 1
            }
        }
        
    }
}

#Preview {
    StateView()
}
