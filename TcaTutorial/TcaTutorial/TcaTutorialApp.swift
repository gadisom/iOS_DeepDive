//
//  TcaTutorialApp.swift
//  TcaTutorial
//
//  Created by 김정원 on 5/4/25.
//

import SwiftUI
import ComposableArchitecture

@main
struct TcaTutorialApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
      }
      
    var body: some Scene {
        WindowGroup {
            AppView(store: TcaTutorialApp.store)
        }
    }
}
