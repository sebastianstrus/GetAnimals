//
//  ViewController.swift
//  GetAnimals
//
//  Created by Sebastian Strus on 2018-05-24.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?
var backgroundMusic: AVAudioPlayer?

var player1: AVAudioPlayer?
var player2: AVAudioPlayer?
var player3: AVAudioPlayer?
var player4: AVAudioPlayer?
var player5: AVAudioPlayer?
var player6: AVAudioPlayer?
var player7: AVAudioPlayer?
var player8: AVAudioPlayer?
var player9: AVAudioPlayer?
var player10: AVAudioPlayer?
var player11: AVAudioPlayer?
var player12: AVAudioPlayer?


class ViewController: UIViewController {
    
    @IBOutlet weak var brawoLabel: UILabel!
    
    @IBOutlet weak var brawoView: UIView!
    var added1 = false
    var added2 = false
    var added3 = false
    var added4 = false
    var added5 = false
    var added6 = false
    var added7 = false
    var added8 = false
    var added9 = false
    var added10 = false
    var added11 = false
    var added12 = false
    
    var points = 0 {
        didSet {
            if points == 12 {
                createParticles()
                self.view.addSubview(brawoView)
                brawoView.addSubview(brawoLabel)
                
                guard let url = Bundle.main.url(forResource: "brawo", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    backgroundMusic = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let backgroundMusic = backgroundMusic else { return }
                    backgroundMusic.numberOfLoops = -1
                    backgroundMusic.volume = 1.0
                    
                    backgroundMusic.play()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    @IBOutlet weak var img10: UIImageView!
    @IBOutlet weak var img11: UIImageView!
    @IBOutlet weak var img12: UIImageView!
    
    @IBOutlet weak var place1: UIImageView!
    @IBOutlet weak var place2: UIImageView!
    @IBOutlet weak var place3: UIImageView!
    @IBOutlet weak var place4: UIImageView!
    @IBOutlet weak var place5: UIImageView!
    @IBOutlet weak var place6: UIImageView!
    @IBOutlet weak var place7: UIImageView!
    @IBOutlet weak var place8: UIImageView!
    @IBOutlet weak var place9: UIImageView!
    @IBOutlet weak var place10: UIImageView!
    @IBOutlet weak var place11: UIImageView!
    @IBOutlet weak var place12: UIImageView!
    
    var frame1: CGRect?
    var frame2: CGRect?
    var frame3: CGRect?
    var frame4: CGRect?
    var frame5: CGRect?
    var frame6: CGRect?
    var frame7: CGRect?
    var frame8: CGRect?
    var frame9: CGRect?
    var frame10: CGRect?
    var frame11: CGRect?
    var frame12: CGRect?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Swift.print("viewDidLoad")
        
        Swift.print("Play background")
        //play background music
        guard let url_background = Bundle.main.url(forResource: "EnergeticUpbeat", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            backgroundMusic = try AVAudioPlayer(contentsOf: url_background, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            guard let backgroundMusic = backgroundMusic else { return }
            backgroundMusic.numberOfLoops = -1
            backgroundMusic.volume = 0.1
            
            backgroundMusic.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
        
        
        
        Swift.print("Find 1")
        //find 1
        set1()
        
        Swift.print("Find 2")
        //find 2
        set2()
        
        Swift.print("Find 3")
        //find 3
        set3()
        
        Swift.print("Find 4")
        //find 4
        set4()
        
        Swift.print("Find 5")
        //find 5
        set5()
        
        Swift.print("Find 6")
        //find 6
        set6()
        
        Swift.print("Find 7")
        //find 7
        set7()
        
        Swift.print("Find 8")
        //find 8
        set8()
        
        Swift.print("Find 9")
        //find 9
        set9()
        
        Swift.print("Find 10")
        //find 10
        set10()
        
        Swift.print("Find 11")
        //find 11
        set11()
        
        Swift.print("Find 12")
        //find 12
        set12()
        
        
        
        Swift.print("Setting frames!")
        frame1 = img1.frame
        frame2 = img2.frame
        frame3 = img3.frame
        frame4 = img4.frame
        frame5 = img5.frame
        frame6 = img6.frame
        frame7 = img7.frame
        frame8 = img8.frame
        frame9 = img9.frame
        frame10 = img10.frame
        frame11 = img11.frame
        frame12 = img12.frame
        
        
        Swift.print("Adding gestures!")
        let panGesture1 = UIPanGestureRecognizer(target: self, action: #selector(moveObject1(_:)))
        let panGesture2 = UIPanGestureRecognizer(target: self, action: #selector(moveObject2(_:)))
        let panGesture3 = UIPanGestureRecognizer(target: self, action: #selector(moveObject3(_:)))
        let panGesture4 = UIPanGestureRecognizer(target: self, action: #selector(moveObject4(_:)))
        let panGesture5 = UIPanGestureRecognizer(target: self, action: #selector(moveObject5(_:)))
        let panGesture6 = UIPanGestureRecognizer(target: self, action: #selector(moveObject6(_:)))
        let panGesture7 = UIPanGestureRecognizer(target: self, action: #selector(moveObject7(_:)))
        let panGesture8 = UIPanGestureRecognizer(target: self, action: #selector(moveObject8(_:)))
        let panGesture9 = UIPanGestureRecognizer(target: self, action: #selector(moveObject9(_:)))
        let panGesture10 = UIPanGestureRecognizer(target: self, action: #selector(moveObject10(_:)))
        let panGesture11 = UIPanGestureRecognizer(target: self, action: #selector(moveObject11(_:)))
        let panGesture12 = UIPanGestureRecognizer(target: self, action: #selector(moveObject12(_:)))
        
        img1.addGestureRecognizer(panGesture1)
        img2.addGestureRecognizer(panGesture2)
        img3.addGestureRecognizer(panGesture3)
        img4.addGestureRecognizer(panGesture4)
        img5.addGestureRecognizer(panGesture5)
        img6.addGestureRecognizer(panGesture6)
        img7.addGestureRecognizer(panGesture7)
        img8.addGestureRecognizer(panGesture8)
        img9.addGestureRecognizer(panGesture9)
        img10.addGestureRecognizer(panGesture10)
        img11.addGestureRecognizer(panGesture11)
        img12.addGestureRecognizer(panGesture12)

        
    }


    @objc func moveObject1(_ gesture: UIPanGestureRecognizer){
        Swift.print("moveObject1")
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            //play 1
            if !player1!.isPlaying {
                player1!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)

        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject2(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player2!.isPlaying {
                player2!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject3(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player3!.isPlaying {
                player3!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject4(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player4!.isPlaying {
                player4!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject5(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player5!.isPlaying {
                player5!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject6(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player6!.isPlaying {
                player6!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject7(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player7!.isPlaying {
                player7!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject8(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player8!.isPlaying {
                player8!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject9(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player9!.isPlaying {
                player9!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject10(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player10!.isPlaying {
                player10!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject11(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player11!.isPlaying {
                player11!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    @objc func moveObject12(_ gesture: UIPanGestureRecognizer){
        //1. Check That We Have A Valid Draggable View
        guard let draggedObject = gesture.view else { return }
        if gesture.state == .began || gesture.state == .changed {
            if !player12!.isPlaying {
                player12!.play()
            }
            //2. Set The Translation & Move The View
            let translation = gesture.translation(in: self.view)
            draggedObject.center = CGPoint(x: draggedObject.center.x + translation.x, y: draggedObject.center.y + translation.y)
            gesture.setTranslation(CGPoint.zero, in: self.view)
            
        } else if gesture.state == .ended {
            dropped()
        }
    }
    
    
    
    func dropped() {
        if sqrt(pow((img1.center.x - place1.center.x), 2) + pow((img1.center.y - place1.center.y), 2)) < 30 {
            img1.center = CGPoint(x: place1.center.x, y: place1.center.y)
            self.img1.isUserInteractionEnabled = false
            if !added1 {
                points = points + 1
                added1 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player1 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player1 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set1()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
            
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img1.frame = self.frame1!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player1 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player1 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set1()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img2.center.x - place2.center.x), 2) + pow((img2.center.y - place2.center.y), 2)) < 20 {
            img2.center = CGPoint(x: place2.center.x, y: place2.center.y)
            self.img2.isUserInteractionEnabled = false
            if !added2 {
                points = points + 1
                added2 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player2 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player2 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set2()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img2.frame = self.frame2!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player2 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player2 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set2()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img3.center.x - place3.center.x), 2) + pow((img3.center.y - place3.center.y), 2)) < 20 {
            img3.center = CGPoint(x: place3.center.x, y: place3.center.y)
            self.img3.isUserInteractionEnabled = false
            if !added3 {
                points = points + 1
                added3 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player3 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player3 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set3()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img3.frame = self.frame3!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player3 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player3 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set3()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img4.center.x - place4.center.x), 2) + pow((img4.center.y - place4.center.y), 2)) < 20 {
            img4.center = CGPoint(x: place4.center.x, y: place4.center.y)
            self.img4.isUserInteractionEnabled = false
            if !added4 {
                points = points + 1
                added4 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player4 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player4 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set4()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img4.frame = self.frame4!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player4 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player4 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set4()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img5.center.x - place5.center.x), 2) + pow((img5.center.y - place5.center.y), 2)) < 20 {
            img5.center = CGPoint(x: place5.center.x, y: place5.center.y)
            self.img5.isUserInteractionEnabled = false
            if !added5 {
                points = points + 1
                added5 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player5 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player5 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set5()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img5.frame = self.frame5!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player5 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player5 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set5()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img6.center.x - place6.center.x), 2) + pow((img6.center.y - place6.center.y), 2)) < 20 {
            img6.center = CGPoint(x: place6.center.x, y: place6.center.y)
            self.img6.isUserInteractionEnabled = false
            if !added6 {
                points = points + 1
                added6 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player6 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player6 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set6()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img6.frame = self.frame6!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player6 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player6 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set6()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img7.center.x - place7.center.x), 2) + pow((img7.center.y - place7.center.y), 2)) < 20 {
            img7.center = CGPoint(x: place7.center.x, y: place7.center.y)
            self.img7.isUserInteractionEnabled = false
            if !added7 {
                points = points + 1
                added7 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player7 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player7 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set7()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img7.frame = self.frame7!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player7 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player7 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set7()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img8.center.x - place8.center.x), 2) + pow((img8.center.y - place8.center.y), 2)) < 20 {
            img8.center = CGPoint(x: place8.center.x, y: place8.center.y)
            self.img8.isUserInteractionEnabled = false
            if !added8 {
                points = points + 1
                added8 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player8 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player8 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set8()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img8.frame = self.frame8!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player8 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player8 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set8()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img9.center.x - place9.center.x), 2) + pow((img9.center.y - place9.center.y), 2)) < 20 {
            img9.center = CGPoint(x: place9.center.x, y: place9.center.y)
            self.img9.isUserInteractionEnabled = false
            if !added9 {
                points = points + 1
                added9 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player9 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player9 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set9()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img9.frame = self.frame9!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player9 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player9 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set9()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img10.center.x - place10.center.x), 2) + pow((img10.center.y - place10.center.y), 2)) < 20 {
            img10.center = CGPoint(x: place10.center.x, y: place10.center.y)
            self.img10.isUserInteractionEnabled = false
            if !added10 {
                points = points + 1
                added10 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player10 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player10 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set10()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img10.frame = self.frame10!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player10 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player10 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set10()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img11.center.x - place11.center.x), 2) + pow((img11.center.y - place11.center.y), 2)) < 20 {
            img11.center = CGPoint(x: place11.center.x, y: place11.center.y)
            self.img11.isUserInteractionEnabled = false
            if !added11 {
                points = points + 1
                added11 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player11 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player11 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set11()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img11.frame = self.frame11!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player11 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player11 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set11()
            } catch let error {
                print(error.localizedDescription)
            }
        }
        
        if sqrt(pow((img12.center.x - place12.center.x), 2) + pow((img12.center.y - place12.center.y), 2)) < 20 {
            img12.center = CGPoint(x: place12.center.x, y: place12.center.y)
            self.img12.isUserInteractionEnabled = false
            if !added12 {
                points = points + 1
                added12 = true
                Swift.print("points: \(points)")
                guard let url = Bundle.main.url(forResource: "click", withExtension: "mp3") else { return }
                do {
                    try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                    try AVAudioSession.sharedInstance().setActive(true)
                    /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                    player12 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                    /* iOS 10 and earlier require the following line:
                     player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                    guard let player = player12 else { return }
                    player.numberOfLoops = 0
                    player.volume = 1.0
                    player.play()
                    set12()
                } catch let error {
                    print(error.localizedDescription)
                }
            }
        } else {
            UIView.animate(withDuration: 1.0) {
                self.img12.frame = self.frame12!
            }
            guard let url = Bundle.main.url(forResource: "zonk", withExtension: "mp3") else { return }
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
                /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
                player12 = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
                /* iOS 10 and earlier require the following line:
                 player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
                guard let player = player12 else { return }
                player.numberOfLoops = 0
                player.volume = 1.0
                player.play()
                set12()
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
    
    
    
    public func createParticles() {
        let view = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        view.contentMode = UIViewContentMode.scaleAspectFill
        //view.image = UIImage(named: "landscape")
        self.view.addSubview(view)
        let cloud = CAEmitterLayer()
        cloud.emitterPosition = CGPoint(x: view.center.x, y: -50)
        cloud.emitterShape = kCAEmitterLayerLine
        cloud.emitterSize = CGSize(width: view.frame.size.width, height: 1)
        let flake = makeEmitterCell()
        cloud.emitterCells = [flake]
        view.layer.addSublayer(cloud)
    }
    
    func makeEmitterCell() -> CAEmitterCell {
        let cell = CAEmitterCell()
        cell.contentsScale = 1.5
        cell.birthRate = 4
        cell.lifetime = 50.0
        cell.velocity = 50
        cell.emissionLongitude = CGFloat.pi
        cell.emissionRange = CGFloat.pi / 4
        cell.spin = 0.5
        cell.spinRange = 1.2
        cell.scaleRange = -0.05
        cell.contents = UIImage(named: "mleko")?.cgImage
        return cell
    }
    
    
    
    
    
    func set1() {
        guard let url1 = Bundle.main.url(forResource: "kot", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player1 = try AVAudioPlayer(contentsOf: url1, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player1!.numberOfLoops = -1
            player1!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set2() {
        guard let url2 = Bundle.main.url(forResource: "pies", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player2 = try AVAudioPlayer(contentsOf: url2, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player2!.numberOfLoops = -1
            player2!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set3() {
        guard let url3 = Bundle.main.url(forResource: "krowa", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player3 = try AVAudioPlayer(contentsOf: url3, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player3!.numberOfLoops = -1
            player3!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set4() {
        guard let url4 = Bundle.main.url(forResource: "zaba", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player4 = try AVAudioPlayer(contentsOf: url4, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player4!.numberOfLoops = -1
            player4!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set5() {
        guard let url5 = Bundle.main.url(forResource: "kogut", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player5 = try AVAudioPlayer(contentsOf: url5, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player5!.numberOfLoops = -1
            player5!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set6() {
        guard let url6 = Bundle.main.url(forResource: "owca", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player6 = try AVAudioPlayer(contentsOf: url6, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player6!.numberOfLoops = -1
            player6!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set7() {
        guard let url7 = Bundle.main.url(forResource: "slon", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player7 = try AVAudioPlayer(contentsOf: url7, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player7!.numberOfLoops = -1
            player7!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set8() {
        guard let url8 = Bundle.main.url(forResource: "kon", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player8 = try AVAudioPlayer(contentsOf: url8, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player8!.numberOfLoops = -1
            player8!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set9() {
        guard let url9 = Bundle.main.url(forResource: "lew", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player9 = try AVAudioPlayer(contentsOf: url9, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player9!.numberOfLoops = -1
            player9!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set10() {
        guard let url10 = Bundle.main.url(forResource: "tygrys", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player10 = try AVAudioPlayer(contentsOf: url10, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player10!.numberOfLoops = -1
            player10!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set11() {
        guard let url11 = Bundle.main.url(forResource: "malpa", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player11 = try AVAudioPlayer(contentsOf: url11, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player11!.numberOfLoops = -1
            player11!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    func set12() {
        guard let url12 = Bundle.main.url(forResource: "swinia", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player12 = try AVAudioPlayer(contentsOf: url12, fileTypeHint: AVFileType.mp3.rawValue)
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            //guard let player = player1 else { return }
            player12!.numberOfLoops = -1
            player12!.volume = 1.0
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    
    
}




