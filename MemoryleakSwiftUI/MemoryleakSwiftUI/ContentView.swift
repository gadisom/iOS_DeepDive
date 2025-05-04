//
//  ContentView.swift
//  MemoryleakSwiftUI
//
//  Created by 김정원 on 4/29/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowSheet: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("New Sheet") {
                isShowSheet.toggle()
            }
            .font(.title)
            .padding()
        }
        .sheet(isPresented: $isShowSheet) {
            SheetView()
        }
    }
    
}

#Preview {
    ContentView()
}
