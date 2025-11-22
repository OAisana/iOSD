//
//  MainTabBarController.swift
//  Tab_Lab_8
//
//  Created by Aisana Orazkulova on 21.11.2025.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let movies = CategoryViewController(title: "Movies", items: SampleData.movies, tabIcon: "film")
        let music = CategoryViewController(title: "Music", items: SampleData.music, tabIcon: "music.note")
        let books = CategoryViewController(title: "Books", items: SampleData.books, tabIcon: "book")
        let courses = CategoryViewController(title: "Courses", items: SampleData.courses, tabIcon: "graduationcap")

        viewControllers = [movies, music, books, courses].map {
            UINavigationController(rootViewController: $0)
        }
    }
}
