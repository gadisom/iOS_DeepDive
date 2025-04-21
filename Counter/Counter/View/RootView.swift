//
//  ContentView.swift
//  Counter
//
//  Created by 김정원 on 4/18/25.
//

import SwiftUI

struct RootView: View {
    @StateObject private var model = CounterModel()
    init() {
        print("🟦 RootView init")
    }
    var body: some View {
        print("🔁 RootView")
        return TabView {
            NavigationView {
                List {
                    NavigationLink("ObservedObject View") {
                        ObservedObjectView(model: model)
                    }
                    
                    NavigationLink("EnvironmentObject View") {
                        EnvironmentObjectView()
                            .environmentObject(model)
                    }
                    
                    NavigationLink("StateObject View") {
                        StateObjectView()
                    }
                    
                    NavigationLink("Binding View") {
                        BindingView(count: $model.count)
                    }
                    
                    NavigationLink("State View") {
                        StateView()
                    }
                }
                .navigationTitle("State Management")
            }
            .tabItem { Label("1", systemImage: "1.circle")}
            VStack {
                ObservedObjectView(model: model)
                Divider()
                EnvironmentObjectView()
                    .environmentObject(model)
                Divider()
                StateObjectView()
                Divider()
                BindingView(count: $model.count)
                Divider()
                StateView()
            }
            .tabItem { Label("2", systemImage: "2.circle")}
            
        }
        
    }
    
}

#Preview {
    RootView()
}
