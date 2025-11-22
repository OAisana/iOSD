//
//  CategoryViewController.swift
//  Tab_Lab_8
//
//  Created by Aisana Orazkulova on 21.11.2025.
//

import SnapKit
import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(FavoriteTableViewCell.self, forCellReuseIdentifier: "FavoriteCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 80
        return tableView
    }()

    private let items: [FavoriteItem]

    init(title: String, items: [FavoriteItem], tabIcon: String) {
        self.items = items
        super.init(nibName: nil, bundle: nil)
        self.title = title
        self.tabBarItem = UITabBarItem(
            title: title,
            image: UIImage(systemName: tabIcon),
            tag: 0
        )
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

    private func setupViews() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { $0.edges.equalToSuperview() }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteCell", for: indexPath) as! FavoriteTableViewCell
        cell.configure(with: item)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController(item: items[indexPath.row])
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
