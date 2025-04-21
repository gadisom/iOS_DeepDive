//
//  SharedObservedObjectView.swift
//  Counter
//
//  Created by 김정원 on 4/18/25.
//

import SwiftUI

struct ObservedObjectView: View {
    @ObservedObject var model: CounterModel

    var body: some View {
        print("🔁 ObservedObjectView")
        return VStack {
            Text("💡@ObservedObject를 사용 뷰.")
                .foregroundColor(.gray)
                .padding()
            Text("🔵 count: \(model.count)")
            Button("증가") {
                model.count += 1
            }
        }
    }
}


