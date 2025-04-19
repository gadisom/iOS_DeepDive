//
//  ContentView.swift
//  Counter
//
//  Created by 김정원 on 4/18/25.
//

import SwiftUI

struct RootView: View {
    @StateObject private var model = CounterModel()

    var body: some View {
        TabView {
            ObservedObjectView(model: model)
                .tabItem { Label("ob", systemImage: "1.circle")}
            EnvironmentObjectView()
                .tabItem { Label("EN", systemImage: "2.circle")}
                .environmentObject(model)
            StateObjectView()
                .tabItem { Label("ST", systemImage: "3.circle")}
            BindingView(count: $model.count)
                .tabItem { Label("BD", systemImage: "4.circle")}
            StateView()
                .tabItem { Label("State", systemImage: "5.circle")}
        }
    }
}

#Preview {
    RootView()
}
