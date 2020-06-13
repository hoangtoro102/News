//
//  ExpandedSources.swift
//  DailyNews
//
//  Created by HoangNguyen on 6/13/20.
//  Copyright © 2020 HoangNguyen. All rights reserved.
//

import Foundation
import RxDataSources

final class ExpandedSources {
    var category: SourceCategories
    var sources: [Sources]
    
    init(category: SourceCategories, sources: [Sources]) {
        self.category = category
        self.sources = sources
    }
}
struct ExpandedSourcesSectionModel {
    var items: [ExpandedSources]
}

extension ExpandedSourcesSectionModel: SectionModelType {
    
    init(original: ExpandedSourcesSectionModel, items: [ExpandedSources]) {
        self = original
        self.items = items
    }
}

