//
//  ViewController.swift
//  lab_6
//
//  Created by Aisana Orazkulova on 31.10.2025.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet private weak var albumImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    var player: AVAudioPlayer?
    private var currentTrackIndex = 0
    
    let tracks: [Track] = [
        .abuse,
        .qymbattym,
        .baisheshek,
        .baiagy,
        .mahabbat,
        .keipker
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    private func updateUI() {
           let track = tracks[currentTrackIndex]
           albumImageView.image = track.image
           titleLabel.text = track.title
    }
    @IBAction private func playTapped(_ sender: UIButton){
        if let player = player, player.isPlaying {
                    player.pause()
                    sender.setTitle("play", for: .normal)
                } else {
                    if player == nil {
                        let track = tracks[currentTrackIndex]
                        playSound(track: track)
                    }
                    player?.play()
                    sender.setTitle("pause", for: .normal)
                }
    }
    @IBAction private func nextTapped(_sender: UIButton){
        currentTrackIndex = (currentTrackIndex + 1) % tracks.count
                updateUI()
                playSound(track: tracks[currentTrackIndex])
    }
    @IBAction private func prevTapped(_sender: UIButton){
        currentTrackIndex = (currentTrackIndex - 1 + tracks.count) % tracks.count
                updateUI()
                playSound(track: tracks[currentTrackIndex])
    }
    private func playSound(track: Track) {
            guard let url = Bundle.main.url(forResource: track.fileName, withExtension: track.extension) else {
                print("File not found: \(track.fileName).\(track.extension)")
                return
            }
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
            } catch {
                print("Error playing sound: \(error.localizedDescription)")
            }
        }
}

enum Track {
    case abuse
    case qymbattym
    case baisheshek
    case baiagy
    case mahabbat
    case keipker
}

extension Track {
    
    var title: String {
        switch self {
        case .abuse:
            return "abuse-ninety one"
        case .qymbattym:
            return "qymbattym-kalifarniya"
        case .baisheshek:
            return "baisheshek-orynkhan"
        case .baiagy:
            return "baiagy-kazybek kuraiysh"
        case .mahabbat:
            return "mahabbat-alem"
        case .keipker:
            return "keipker-darkhan juzz"
        }
    }
    
    var image: UIImage? {
        switch self {
        case .abuse:
            return .abuse
        case .qymbattym:
            return .qymbattym
        case .baisheshek:
            return .baisheshek
        case .baiagy:
            return .baiagy
        case .mahabbat:
            return .mahabbat
        case .keipker:
            return.keipker
        }
    }
    
    var fileName: String {
        switch self {
        case .abuse:
            return "abuse"
        case .qymbattym:
            return "qymbattym"
        case .baisheshek:
            return "baisheshek"
        case .baiagy:
            return "baiagy"
        case .mahabbat:
            return "mahabbat"
        case .keipker:
            return "keipker"
        }
    }
    
    var `extension`: String {
        switch self {
        case .abuse, .qymbattym, .baisheshek, .baiagy, .mahabbat, .keipker:
            return "mp3"
        }
    }
}

