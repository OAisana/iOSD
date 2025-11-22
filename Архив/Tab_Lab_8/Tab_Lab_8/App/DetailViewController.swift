//
//  DetailViewController.swift
//  Tab_Lab_8
//
//  Created by Aisana Orazkulova on 21.11.2025.
//

import SnapKit
import UIKit

class DetailViewController: UIViewController {

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: item.imageName) ?? UIImage(systemName: item.imageName)
        return imageView
    }()

    private lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = item.subtitle
        label.font = .systemFont(ofSize: 17)
        label.numberOfLines = 0
        return label
    }()

    private let reviewTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Your Review"
        label.font = .boldSystemFont(ofSize: 20)
        return label
    }()

    private lazy var reviewTextLabel: UILabel = {
        let label = UILabel()
        label.text = item.review
        label.font = .italicSystemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()

    private let item: FavoriteItem

    init(item: FavoriteItem) {
        self.item = item
        super.init(nibName: nil, bundle: nil)
        title = item.title
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

        setupViews()
    }

    private func setupViews() {
        view.addSubview(imageView)
        view.addSubview(subtitleLabel)
        view.addSubview(reviewTitleLabel)
        view.addSubview(reviewTextLabel)

        imageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(16)
            make.left.right.equalToSuperview().inset(16)
            make.height.equalTo(imageView.snp.width).multipliedBy(9.0/16.0)
        }

        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(16)
            make.left.right.equalToSuperview().inset(16)
        }

        reviewTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel.snp.bottom).offset(24)
            make.left.right.equalToSuperview().inset(16)
        }

        reviewTextLabel.snp.makeConstraints { make in
            make.top.equalTo(reviewTitleLabel.snp.bottom).offset(8)
            make.left.right.equalToSuperview().inset(16)
        }
    }
}
