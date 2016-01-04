//
//  ViewController.swift
//  Mytown
//
//  Created by Angels on 01/01/16.
//  Copyright © 2016 Angels. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var ExploreBtn: UIButton!
    
    var BGmusic: AVAudioPlayer = AVAudioPlayer()
    var tramsnd: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ExploreBtn.layer.cornerRadius = 2.0
    
    do {
        
        let path = NSBundle.mainBundle().pathForResource("BG", ofType: "mp3")
        let url = NSURL(fileURLWithPath: path!)
        try BGmusic = AVAudioPlayer(contentsOfURL: url)
        
        BGmusic.numberOfLoops = -1
        BGmusic.volume = 0.8
        BGmusic.prepareToPlay()
        BGmusic.play()
        
        try tramsnd = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lisbontram", ofType: "mp3")!))
        tramsnd.prepareToPlay()
        
    } catch let err as NSError {
        print(err.debugDescription)
    }
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Explore(sender: AnyObject) {
        
        tramsnd.play()
    }
    

}

