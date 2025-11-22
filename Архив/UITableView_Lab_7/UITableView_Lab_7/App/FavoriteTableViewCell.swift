//
//  FavoriteTableViewCell.swift
//  UITableView_Lab_7
//
//  Created by Aisana Orazkulova on 21.11.2025.
//

import UIKit
import SnapKit

class FavoriteTableViewCell: UITableViewCell {

    // MARK: - UI Components

    private let customImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        return imageView
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 1
        return label
    }()

    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 1
        return label
    }()

    private let reviewLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.italicSystemFont(ofSize: 12)
        label.textColor = .darkGray
        label.numberOfLines = 2
        return label
    }()

    // MARK: - Init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup Layout

    private func setupViews() {
        backgroundColor = .clear
        selectionStyle = .none

        contentView.addSubview(customImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(reviewLabel)

        customImageView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.top.equalToSuperview().offset(12)
            make.bottom.equalToSuperview().inset(12)
            make.width.height.equalTo(60)
        }

        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(customImageView.snp.top)
            make.left.equalTo(customImageView.snp.right).offset(12)
            make.right.equalToSuperview().inset(16)
        }

        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.left.equalTo(titleLabel)
            make.right.equalTo(titleLabel)
        }

        reviewLabel.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel.snp.bottom).offset(4)
            make.left.equalTo(titleLabel)
            make.right.equalTo(titleLabel)
            make.bottom.lessThanOrEqualToSuperview().inset(12)
        }
    }

    // MARK: - Public Configuration

    func configure(image: UIImage?, title: String, subtitle: String, review: String) {
        customImageView.image = image
        titleLabel.text = title
        subtitleLabel.text = subtitle
        reviewLabel.text = review
    }
}
