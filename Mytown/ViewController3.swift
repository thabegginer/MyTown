//
//  ViewController3.swift
//  Mytown
//
//  Created by Angels on 02/01/16.
//  Copyright © 2016 Angels. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController3: UIViewController {
    
    
    var tramsound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        do {
            
            try tramsound = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lisbontram", ofType: "mp3")!))
            tramsound.prepareToPlay()
            
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Tramsound(sender: AnyObject) {
        tramsound.play()
        
    }


}
