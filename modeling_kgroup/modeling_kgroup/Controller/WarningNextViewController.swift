//
//  WarningNextViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/19.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit

class WarningNextViewController: UIViewController {
    
    var warningView = WarningNextView()
    
    override func loadView() {
        self.view = warningView
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}




