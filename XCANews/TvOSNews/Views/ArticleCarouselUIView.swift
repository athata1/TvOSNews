//
//  ArticleCarouselUIView.swift
//  TvOSNews
//
//  Created by Akhil Thata on 8/27/24.
//

import SwiftUI

struct ArticleCarouselUIView: View {
    
    @EnvironmentObject private var bookMarkVM: ArticleSearchViewModel
    
    let title: String
    let articles: [Article]
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
                .foregroundStyle(.primary)
                .padding(.leading, 64)
            ScrollView(.horizontal) {
                LazyHStack(spacing: 32) {
                    ForEach(articles) { article in
                        NavigationLink {
                            Text(article.title)
                        } label: {
                            ArticleItemView(article: article)
                                .frame(width: 420, height: 420)
                        }
                        .buttonStyle(.card)
                    }
                }
            }
            .padding([.bottom, .horizontal], 64)
            .padding(.top, 32)
        }
    }
}

#Preview {
    NavigationView {
        ArticleCarouselUIView(title: "Business", articles: Article.previewData)
            .environmentObject(ArticleBookmarkViewModel.shared)
    }
}
