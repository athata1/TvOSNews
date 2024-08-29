//
//  ContentView.swift
//  TvOSNews
//
//  Created by Akhil Thata on 7/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("News")
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
                .tag("news")
            Text("Saved")
                .tabItem {
                    Label("Saved", systemImage: "bookmark")
                }
                .tag("saved")
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag("search")
        }
    }
}

#Preview {
    ContentView()
}
