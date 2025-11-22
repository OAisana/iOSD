//
//  FavoriteTableViewCell.swift
//  Tab_Lab_8
//
//  Created by Aisana Orazkulova on 21.11.2025.
//

import UIKit
import SnapKit

class FavoriteTableViewCell: UITableViewCell {

    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 8
        return imageView
    }()

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.numberOfLines = 2
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        contentView.addSubview(iconImageView)
        contentView.addSubview(titleLabel)

        iconImageView.snp.makeConstraints { make in
            make.left.top.equalToSuperview().offset(12)
            make.bottom.lessThanOrEqualToSuperview().inset(12)
            make.width.height.equalTo(60)
        }

        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(iconImageView.snp.right).offset(12)
            make.right.equalToSuperview().inset(16)
            make.centerY.equalTo(iconImageView)
        }
    }

    func configure(with item: FavoriteItem) {
        titleLabel.text = item.title
        iconImageView.image = UIImage(named: item.imageName) ?? UIImage(systemName: item.imageName)
    }
}
