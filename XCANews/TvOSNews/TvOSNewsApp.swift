//
//  TvOSNewsApp.swift
//  TvOSNews
//
//  Created by Akhil Thata on 7/5/24.
//

import SwiftUI

@main
struct TvOSNewsApp: App {
    
    @StateObject private var bookmarkVM = ArticleBookmarkViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(bookmarkVM)
        }
    }
}
