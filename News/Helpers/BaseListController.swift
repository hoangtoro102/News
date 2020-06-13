//
//  BaseListController.swift
//  AppStoreJSONApis
//
//  Created by HoangNguyen on 6/13/20.
//  Copyright © 2020 HoangNguyen. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {

    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    required init?(coder aDecoder: NSCoder) {

        fatalError("init(coder:) has not been implemented")
    }
}
