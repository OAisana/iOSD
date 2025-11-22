//
//  ViewController.swift
//  UITableView_Lab_7
//
//  Created by Aisana Orazkulova on 14.11.2025.
//

import UIKit
import SnapKit

final class ViewController: UIViewController {

    private enum SectionType: Int, CaseIterable {
        case movies, music, books, courses

        var title: String {
            switch self {
            case .movies: return "Movies"
            case .music: return "Music"
            case .books: return "Books"
            case .courses: return "Courses"
            }
        }
    }

    private let movies: [FavoriteItem] = [
        FavoriteItem(title: "Back to the Future", subtitle: "1985 • Bob Gale", review: "My mom's fav movie.", imageName: "backToTheFuture"),
        FavoriteItem(title: "Hacksaw Ridge", subtitle: "2010 • Christopher Nolan", review: "Mind-bending plot and excellent soundtrack.", imageName: "inception"),
        FavoriteItem(title: "Fight Club", subtitle: "1999 • David Fincher", review: "Dark, clever, and unforgettable.", imageName: "fightClub"),
        FavoriteItem(title: "Iron Man", subtitle: "2008 • Jon Favreau", review: "Charismatic lead and solid origins.", imageName: "ironMan"),
        FavoriteItem(title: "The Lord of the Rings", subtitle: "2001 • Peter Jackson", review: "Epic storytelling and world-building.", imageName: "lotr")
    ]

    private let music: [FavoriteItem] = [
        FavoriteItem(title: "Folklore", subtitle: "Taylor Swift • 2020", review: "Calm, poetic, intimate production.", imageName: "music.note.list"),
        FavoriteItem(title: "After Hours", subtitle: "The Weeknd • 2020", review: "Dark, cinematic pop.", imageName: "music.note"),
        FavoriteItem(title: "1989", subtitle: "Taylor Swift • 2014", review: "Excellent pop craftsmanship.", imageName: "guitars"),
        FavoriteItem(title: "Dawn FM", subtitle: "The Weeknd • 2022", review: "Futuristic concept and strong hooks.", imageName: "radio"),
        FavoriteItem(title: "Random Access Memories", subtitle: "Daft Punk • 2013", review: "Polished production and nostalgia.", imageName: "headphones")
    ]

    private let books: [FavoriteItem] = [
        FavoriteItem(title: "Pride & Prejudice", subtitle: "Jane Austen", review: "Witty, romantic, and timeless.", imageName: "book"),
        FavoriteItem(title: "Harry Potter and the Philosopher's Stone", subtitle: "J.K. Rowling", review: "Magical and immersive.", imageName: "book.fill"),
        FavoriteItem(title: "The Book Thief", subtitle: "Markus Zusak", review: "Beautifully written and heartbreaking.", imageName: "books.vertical"),
        FavoriteItem(title: "The Little Prince", subtitle: "Antoine de Saint-Exupéry", review: "Philosophical and tender.", imageName: "star"),
        FavoriteItem(title: "The Hobbit", subtitle: "J.R.R. Tolkien", review: "Adventurous and charming.", imageName: "map")
    ]

    private let courses: [FavoriteItem] = [
        FavoriteItem(title: "iOS Development", subtitle: "Mobile Track", review: "I love building UI and animations.", imageName: "laptopcomputer"),
        FavoriteItem(title: "Data Structures", subtitle: "Computer Science", review: "Fundamental concepts for efficient code.", imageName: "tray.full"),
        FavoriteItem(title: "Operating Systems", subtitle: "Computer Science", review: "Understanding internals of computers.", imageName: "cpu"),
        FavoriteItem(title: "Databases", subtitle: "Computer Science", review: "Practical and widely used knowledge.", imageName: "server.rack"),
        FavoriteItem(title: "Computer Networks", subtitle: "Computer Science", review: "Networking labs were fun and useful.", imageName: "dot.radiowaves.left.and.right")
    ]

    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.register(FavoriteTableViewCell.self, forCellReuseIdentifier: "FavoriteCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

    private func setupViews() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    private func items(for section: Int) -> [FavoriteItem] {
        switch SectionType(rawValue: section) {
        case .movies: return movies
        case .music: return music
        case .books: return books
        case .courses: return courses
        case .none: return []
        }
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return SectionType.allCases.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items(for: section).count
    }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let item = items(for: indexPath.section)[indexPath.row]
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "FavoriteCell",
            for: indexPath
        ) as! FavoriteTableViewCell
        let image = UIImage(named: item.imageName) ?? UIImage(systemName: item.imageName)
        cell.configure(
            image: image,
            title: item.title,
            subtitle: item.subtitle,
            review: item.review
        )
        return cell
    }

    func tableView(_ tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {
        return SectionType(rawValue: section)?.title
    }
}

