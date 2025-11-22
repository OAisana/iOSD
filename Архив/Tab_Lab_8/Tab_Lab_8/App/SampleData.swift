//
//  SampleData.swift
//  Tab_Lab_8
//
//  Created by Aisana Orazkulova on 21.11.2025.
//

import Foundation

struct SampleData {
    static let movies: [FavoriteItem] = [
        FavoriteItem(title: "Inception", subtitle: "2010 • Christopher Nolan", review: "A mind-bending thriller that challenges reality.", imageName: "film"),
        FavoriteItem(title: "The Dark Knight", subtitle: "2008 • Christopher Nolan", review: "A gritty, emotional, and intense superhero film.", imageName: "film.fill"),
        FavoriteItem(title: "Interstellar", subtitle: "2014 • Christopher Nolan", review: "A visually stunning exploration of space and love.", imageName: "sparkles"),
        FavoriteItem(title: "The Matrix", subtitle: "1999 • The Wachowskis", review: "A philosophical and action-packed sci-fi classic.", imageName: "cpu"),
        FavoriteItem(title: "Parasite", subtitle: "2019 • Bong Joon-ho", review: "A masterclass in genre-blending and storytelling.", imageName: "house.fill"),
        FavoriteItem(title: "Titanic", subtitle: "1997 • James Cameron", review: "A tragic love story with epic visuals.", imageName: "drop.fill"),
        FavoriteItem(title: "Gladiator", subtitle: "2000 • Ridley Scott", review: "A heroic tale of revenge and honor.", imageName: "shield.fill"),
        FavoriteItem(title: "Forrest Gump", subtitle: "1994 • Robert Zemeckis", review: "An inspiring journey through life and history.", imageName: "figure.walk"),
        FavoriteItem(title: "The Godfather", subtitle: "1972 • Francis Ford Coppola", review: "A masterpiece of crime, family, and power.", imageName: "person.3.fill"),
        FavoriteItem(title: "Spider-Man: No Way Home", subtitle: "2021 • Jon Watts", review: "Multiverse magic meets emotional stakes.", imageName: "globe")
    ]

    static let music: [FavoriteItem] = [
        FavoriteItem(title: "Midnights", subtitle: "Taylor Swift • 2022", review: "Mature, moody, and magnetic.", imageName: "music.note.list"),
        FavoriteItem(title: "After Hours", subtitle: "The Weeknd • 2020", review: "Cinematic, emotional, and immersive.", imageName: "headphones"),
        FavoriteItem(title: "Divide", subtitle: "Ed Sheeran • 2017", review: "Blend of heartfelt ballads and catchy hits.", imageName: "music.mic"),
        FavoriteItem(title: "Justice", subtitle: "Justin Bieber • 2021", review: "A return to vocal strength and catchy pop.", imageName: "music.quarternote.3"),
        FavoriteItem(title: "Melodrama", subtitle: "Lorde • 2017", review: "Raw emotion and powerful lyricism.", imageName: "bolt.heart.fill"),
        FavoriteItem(title: "DAMN.", subtitle: "Kendrick Lamar • 2017", review: "Hard-hitting and lyrically dense.", imageName: "flame.fill"),
        FavoriteItem(title: "Blonde", subtitle: "Frank Ocean • 2016", review: "Introspective, atmospheric, and unique.", imageName: "cloud.sun.fill"),
        FavoriteItem(title: "folklore", subtitle: "Taylor Swift • 2020", review: "Minimalistic and poetic exploration of stories.", imageName: "leaf"),
        FavoriteItem(title: "Future Nostalgia", subtitle: "Dua Lipa • 2020", review: "A funky, retro-pop dance album.", imageName: "guitars"),
        FavoriteItem(title: "Random Access Memories", subtitle: "Daft Punk • 2013", review: "A rich, retro-futuristic soundscape.", imageName: "antenna.radiowaves.left.and.right")
    ]

    static let books: [FavoriteItem] = [
        FavoriteItem(title: "To Kill a Mockingbird", subtitle: "Harper Lee", review: "A powerful story about justice and empathy.", imageName: "book"),
        FavoriteItem(title: "1984", subtitle: "George Orwell", review: "A chilling dystopian vision of control.", imageName: "eye"),
        FavoriteItem(title: "The Hobbit", subtitle: "J.R.R. Tolkien", review: "A charming journey through Middle-Earth.", imageName: "map"),
        FavoriteItem(title: "The Catcher in the Rye", subtitle: "J.D. Salinger", review: "A raw look at teenage alienation.", imageName: "person"),
        FavoriteItem(title: "Harry Potter and the Sorcerer’s Stone", subtitle: "J.K. Rowling", review: "The start of a magical adventure.", imageName: "wand.and.stars"),
        FavoriteItem(title: "Pride and Prejudice", subtitle: "Jane Austen", review: "A witty and romantic classic.", imageName: "heart.text.square"),
        FavoriteItem(title: "The Great Gatsby", subtitle: "F. Scott Fitzgerald", review: "A tragic tale of love and illusion.", imageName: "sparkles"),
        FavoriteItem(title: "The Book Thief", subtitle: "Markus Zusak", review: "Narratively inventive and emotionally rich.", imageName: "books.vertical"),
        FavoriteItem(title: "The Little Prince", subtitle: "Antoine de Saint-Exupéry", review: "A poetic tale with deep meaning.", imageName: "star"),
        FavoriteItem(title: "The Maze Runner", subtitle: "James Dashner", review: "A thrilling dystopian mystery.", imageName: "square.3.stack.3d")
    ]

    static let courses: [FavoriteItem] = [
        FavoriteItem(title: "iOS Development", subtitle: "Mobile Development", review: "Build beautiful apps using UIKit and SwiftUI.", imageName: "iphone"),
        FavoriteItem(title: "Data Structures", subtitle: "Computer Science", review: "Master efficient algorithms and memory usage.", imageName: "list.bullet.rectangle"),
        FavoriteItem(title: "Web Development", subtitle: "Frontend + Backend", review: "Learn HTML, CSS, JavaScript, and server APIs.", imageName: "desktopcomputer"),
        FavoriteItem(title: "Machine Learning", subtitle: "AI Track", review: "Train models and build intelligent systems.", imageName: "brain.head.profile"),
        FavoriteItem(title: "Operating Systems", subtitle: "Low-level CS", review: "Understand how computers run software.", imageName: "cpu"),
        FavoriteItem(title: "Database Systems", subtitle: "Backend Development", review: "Design schemas, write queries, and scale data.", imageName: "server.rack"),
        FavoriteItem(title: "Networking", subtitle: "Computer Science", review: "Dive into protocols and TCP/IP basics.", imageName: "dot.radiowaves.left.and.right"),
        FavoriteItem(title: "Cybersecurity", subtitle: "Security", review: "Explore encryption, firewalls, and attacks.", imageName: "lock.shield"),
        FavoriteItem(title: "Design Patterns", subtitle: "Software Engineering", review: "Improve code structure and reusability.", imageName: "puzzlepiece.extension"),
        FavoriteItem(title: "Agile Methodologies", subtitle: "Project Management", review: "Scrum, sprints, and effective team workflows.", imageName: "person.3.sequence.fill")
    ]
}
