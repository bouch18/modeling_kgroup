//
//  SecondViewController.swift
//  modeling_kgroup
//
//  Created by 大城 慶知 on 2017/12/14.
//  Copyright © 2017 Univ of the Ryukyu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var warningView = WarningView()
    
    override func loadView() {
        self.view = warningView
    }
    open override func viewDidLoad() {
        super.viewDidLoad()
    }
}

