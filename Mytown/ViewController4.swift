//
//  ViewController4.swift
//  Mytown
//
//  Created by Angels on 03/01/16.
//  Copyright © 2016 Angels. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController4: UIViewController {
    
    var tramsound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
        
        try tramsound = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lisbontram", ofType: "mp3")!))
            
        tramsound.prepareToPlay()
            
        } catch let err as NSError {
            (print(err.debugDescription))
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SoundTram(sender: AnyObject) {
        
        tramsound.play()
        
    }

}
