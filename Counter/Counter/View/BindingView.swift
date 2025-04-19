//
//  SharedBindingView.swift
//  Counter
//
//  Created by 김정원 on 4/18/25.
//

import SwiftUI

struct BindingView: View {
    @Binding var count: Int
   
    var body: some View {
        
        VStack {
            Text("💡@Binding 사용 뷰.")
                .foregroundColor(.gray)
                .padding()
            Text("🔵 count: \(count)")
            Button("증가") {
                count += 1
            }
        }
    }
}
