//
//  ViewController.swift
//  Soundboard
//
//  Created by issd on 25/02/2019.
//  Copyright © 2019 issd. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer:AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func aTapped(_ sender: Any) {
        //Getting url
        let url = Bundle.main.url(forResource:"baboon2" , withExtension: "mp3")
        
        //Make sure url is not null else abort
        guard url != nil else{
            return
        }
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch{
            print("error")
        }
    }
    
    @IBAction func bTapped(_ sender: Any) {
        let url = Bundle.main.url(forResource:"hyena3" , withExtension: "mp3")
        
        //Make sure url is not null else abort
        guard url != nil else{
            return
        }
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch{
            print("error")
        }
    }
    
    
    @IBAction func cTapped(_ sender: Any) {
        let url = Bundle.main.url(forResource:"pigfarm" , withExtension: "mp3")
        
        //Make sure url is not null else abort
        guard url != nil else{
            return
        }
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch{
            print("error")
        }
    }
    
    
    
    @IBAction func dTapped(_ sender: Any) {
        let url = Bundle.main.url(forResource:"wolf7" , withExtension: "mp3")
        
        //Make sure url is not null else abort
        guard url != nil else{
            return
        }
        
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            audioPlayer?.play()
        }
        catch{
            print("error")
        }
    }
    
}

