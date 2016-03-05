//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
    
    let soundArray : [String] = ["note0", "note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    var selectedSoundFileName: String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    func playSound(){
        
        let soundURL = NSBundle.mainBundle().URLForResource(selectedSoundFileName, withExtension: "wav")!
        
        audioPlayer = try! AVAudioPlayer(contentsOfURL: soundURL)
        audioPlayer.play()
        
    }
    
    

    @IBAction func notePressed(sender: UIButton) {
        
        selectedSoundFileName = soundArray[sender.tag]
        
        print(selectedSoundFileName)
        playSound()
        
    
    }
    
  

}

