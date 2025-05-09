//
//  SharedEnvironmentObjectView.swift
//  Counter
//
//  Created by 김정원 on 4/18/25.
//

import SwiftUI

struct EnvironmentObjectView: View {
    @EnvironmentObject var model: CounterModel

    var body: some View {
        print("🔁 EnvView body")
        return VStack {
            Text("💡@EnvironmentObject 사용 뷰.")
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
    EnvironmentObjectView()
        .environmentObject(CounterModel())
}
