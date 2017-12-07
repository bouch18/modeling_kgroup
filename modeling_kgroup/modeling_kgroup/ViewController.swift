//
//  ViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/11/09.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit
import AudioToolbox


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // system sound のIDを指定して再生
    @IBAction func buttonShutter0(sender : AnyObject) {
        // shutter
        var soundIdRing:SystemSoundID = 1108
        
        // bell
        //var soundIdRing:SystemSoundID = 1000
        
        // update
        //var soundIdRing:SystemSoundID = 1336
        
        
        if let soundUrl = CFBundleCopyResourceURL(CFBundleGetMainBundle(), nil, nil, nil){
            AudioServicesCreateSystemSoundID(soundUrl, &soundIdRing)
            AudioServicesPlaySystemSound(soundIdRing)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
