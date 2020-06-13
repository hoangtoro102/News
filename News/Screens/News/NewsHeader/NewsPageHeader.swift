//
//  NewsPageHeader.swift
//  DailyNews
//
//  Created by HoangNguyen on 6/13/20.
//  Copyright © 2020 HoangNguyen. All rights reserved.
//

import UIKit
import TinyConstraints

class NewsPageHeader: UICollectionReusableView {

    let feedHeaderController = NewsHeaderController()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(feedHeaderController.view)
        feedHeaderController.view.edgesToSuperview()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
