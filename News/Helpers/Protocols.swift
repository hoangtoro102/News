//
//  Protocols.swift
//  DailyNews
//
//  Created by HoangNguyen on 6/13/20.
//  Copyright © 2020 HoangNguyen. All rights reserved.
//

import UIKit
import RxCocoa

protocol SlideMenuDelegate: class {
    func configureSlideMenu()
}
protocol SourcesViewControllerDelegate: class {
    func pushToSourcesVC(source: UIViewController)
}

    
