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
        
        VStack {
            TabView {
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
                    EnvironmentObjectView()
                        .environmentObject(model)
                    StateObjectView()
                    BindingView(count: $model.count)
                    StateView()
                }
                .tabItem { Label("2", systemImage: "2.circle")}
                
            }
            
        }
    }
}

#Preview {
    RootView()
}
