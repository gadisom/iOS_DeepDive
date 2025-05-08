//
//  AppFeatureTests.swift
//  TcaTutorialTests
//
//  Created by 김정원 on 5/8/25.
//

import ComposableArchitecture
import Testing

@testable import TcaTutorial

@MainActor

struct AppFeatureTests {
    @Test
    func incrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
        
        await store.send(\.tab1.incrementButtonTapped){
            $0.tab1.count = 1
        }
    }
    
}
