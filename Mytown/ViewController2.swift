//
//  ViewController2.swift
//  Mytown
//
//  Created by Angels on 01/01/16.
//  Copyright © 2016 Angels. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController2: UIViewController {
    
    var tramsound: AVAudioPlayer!
    var takephoto: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
        
    let path = NSBundle.mainBundle().pathForResource("lisbontram", ofType: "mp3")
    let url = NSURL(fileURLWithPath: path!)
    try tramsound = AVAudioPlayer(contentsOfURL: url)
    try takephoto = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("takephoto", ofType: "mp3")!))
            
    tramsound.prepareToPlay()
    takephoto.prepareToPlay()

            
        } catch let err as NSError {
                print(err.debugDescription)
            }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Soundtram(sender: AnyObject) {
        tramsound.play()
    }
    
    @IBAction func Takephoto(sender: AnyObject) {
        takephoto.play()
    }
    
    
}
