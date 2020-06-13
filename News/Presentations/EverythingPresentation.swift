//
//  EverythingPresentation.swift
//  DailyNews
//
//  Created by HoangNguyen on 6/13/20.
//  Copyright © 2020 HoangNguyen. All rights reserved.
//

import Foundation
import RxDataSources

final class EverythingPresentation {
    let source: String
    let author: String?
    let title: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String?
    
    init(source: String, author: String?, title: String?, url: String, urlToImage: String?, publishedAt: String, content: String?) {
        self.source = source
        self.author = author
        self.title = title
        self.url = url
        self.urlToImage = urlToImage
        self.publishedAt = publishedAt
        self.content = content
    }
    convenience init(everything: EArticleModel) {
        self.init(source: everything.source.name, author: everything.author, title: everything.title, url: everything.url, urlToImage: everything.urlToImage, publishedAt: everything.publishedAt, content: everything.content)
    }
}

extension EverythingPresentation: Equatable {
    static func == (lhs: EverythingPresentation, rhs: EverythingPresentation) -> Bool {
        return lhs.author == rhs.author && lhs.source == rhs.source && lhs.publishedAt == rhs.publishedAt && lhs.title == rhs.title && lhs.url == rhs.url && lhs.urlToImage == rhs.urlToImage

    }
    
    
}
struct PresentationSection{
    var header: String
    var items: [EverythingPresentation]
    
}

extension PresentationSection: SectionModelType {
    init(original: PresentationSection, items: [EverythingPresentation]) {
        self = original
        self.items = items
    }

}
