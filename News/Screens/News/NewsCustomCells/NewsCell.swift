//
//  NewsCell.swift
//  DailyNews
//
//  Created by HoangNguyen on 6/13/20.
//  Copyright © 2020 HoangNguyen. All rights reserved.
//

import UIKit

class NewsCell: UICollectionViewCell {
    
    var newsImageView: UIImageView = {
        let imageV = UIImageView(frame: .zero)
        imageV.clipsToBounds = true
        imageV.layer.cornerRadius = 10
        imageV.image = UIImage(named: "placeholderNews")
        return imageV
    }()
    var headerLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .systemBlue
        label.font = .systemFont(ofSize: 22)
        label.textAlignment = .center
//        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 1
        return label
    }()
    var contentLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .black
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
//        label.adjustsFontSizeToFitWidth = true
        label.numberOfLines = 6
        return label
    }()
    var timeLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .lightGray
        label.adjustsFontSizeToFitWidth = true
        label.font = .systemFont(ofSize: 12)
        return label
    }()
    var sourceLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.textColor = .systemGray
        label.adjustsFontSizeToFitWidth = true
        label.font = .systemFont(ofSize: 13)
        return label
    }()
    var newsEverything: EverythingPresentation? {
        didSet {
            if let newsEverything = newsEverything {
                if let newsImageUrl = newsEverything.urlToImage {
                    if newsImageUrl != "null"{
                        newsImageView.sd_setImage(with: URL(string: newsImageUrl))
                    } else {
                        newsImageView.image = UIImage(named: "placeholderNews")
                    }
                }
                let time = newsEverything.publishedAt.convertToDisplayFormat() //.getTimeAgo()
                headerLabel.text = newsEverything.title
                contentLabel.text = newsEverything.content
                timeLabel.text = "Updated:" + time
                sourceLabel.text = newsEverything.source
            }
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        backgroundColor = .systemBackground
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        addSubview(headerLabel)
        addSubview(contentLabel)
        addSubview(newsImageView)
        addSubview(timeLabel)
        let horizontalStackView = UIStackView(arrangedSubviews: [timeLabel, sourceLabel])
        horizontalStackView.distribution = .equalSpacing
        let labelStackView = UIStackView()
        addSubview(labelStackView)
        labelStackView.addArrangedSubview(headerLabel)
        labelStackView.addArrangedSubview(contentLabel)
        labelStackView.addArrangedSubview(horizontalStackView)
        labelStackView.axis = .vertical

        newsImageView.edgesToSuperview(excluding: .bottom, insets: .init(top: 15, left: 45, bottom: 0, right: 45))
        newsImageView.height(160)
        headerLabel.height(40)
        labelStackView.edgesToSuperview(excluding: .top, insets: .init(top: 0, left: 5, bottom: 15, right: 0))
        labelStackView.topToBottom(of: newsImageView)
    }
}
